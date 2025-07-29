import { Injectable } from '@nestjs/common';
import { DatabaseService } from '../database/database.service';
import { MatchIntakeDto } from './dto/match-intake.dto';
import {
  ClinicianMatchScore,
  ClinicianWithRelations,
} from './entities/matching-engine.contract';
import { openai } from '@ai-sdk/openai';
import { streamText } from 'ai';

@Injectable()
export class MatchingEngineService {
  constructor(private readonly databaseService: DatabaseService) {}

  public async matchClinicians(intake: MatchIntakeDto) {
    const clinicians = await this.databaseService.getCliniciansWithRelations(
      this.databaseService.buildClinicianFilter(intake),
    );

    return this.rankAndScoreClinicians(clinicians, intake);
  }

  public async topMatch(intake: MatchIntakeDto) {
    const topClinician =
      await this.databaseService.getTopClinicianWithRelations(
        this.databaseService.buildClinicianFilter(intake),
      );

    if (!topClinician) {
      throw new Error('No clinician found');
    }

    const topMatch = this.scoreClinician(topClinician, intake);

    const explanation = this.generateTopMatchExplanation(intake, topMatch, [
      topClinician,
    ]);

    return explanation;
  }

  public async getAllClinicians() {
    return await this.databaseService.listClinicians();
  }

  private generateTopMatchExplanation(
    intake: MatchIntakeDto,
    topMatch: ClinicianMatchScore,
    clinicians: ClinicianWithRelations[],
  ) {
    const systemPrompt =
      'You are a helpful assistant that provides concise summaries of clinician matches.';

    const { textStream } = streamText({
      model: openai('gpt-4o-mini'),
      messages: [
        {
          role: 'system',
          content: systemPrompt,
        },
        {
          role: 'user',
          content: this.buildUserPrompt(intake, topMatch, clinicians),
        },
      ],
    });

    return textStream;
  }

  private buildUserPrompt(
    intake: MatchIntakeDto,
    topScored: ClinicianMatchScore,
    clinicians: ClinicianWithRelations[],
  ) {
    return `Given the following clinicians and patient intake, provide a concise summary of the top match:
    Intake: ${JSON.stringify(intake)}
    Clinicians: ${JSON.stringify(clinicians)}
    Top Match: ${JSON.stringify(topScored)}

    Compare the top match with other clinicians and explain why it is the best fit. 
    Include details on overlapping specialties, languages, and other relevant factors.
     Focus on the top match's strengths and how they align with the patient's needs.
      Keep the explanation concise and informative.
    `;
  }

  private rankAndScoreClinicians(
    clinicians: ClinicianWithRelations[],
    intake: MatchIntakeDto,
  ) {
    const scored = clinicians.map((clinician) =>
      this.scoreClinician(clinician, intake),
    );
    scored.sort((a, b) => b.score - a.score || a.matchCount - b.matchCount);
    return scored;
  }

  private scoreClinician(
    clinician: ClinicianWithRelations,
    intake: MatchIntakeDto,
  ) {
    let score = 0;
    const overlapping: string[] = [];

    if (clinician.isAvailableNow) {
      score += 20;
      overlapping.push('available_now');
    }

    if (
      clinician.insurancesAccepted &&
      clinician.insurancesAccepted.some(
        (i) => i.insurance === intake.insuranceProvider,
      )
    ) {
      score += 20;
      overlapping.push('accepts_insurance');
    }

    score += 10 * (1 / (clinician.matchCount + 1));

    if (
      intake.clinicalNeeds &&
      intake.clinicalNeeds.length > 0 &&
      clinician.clinicalSpecialties &&
      clinician.clinicalSpecialties.some((s) => {
        const needs = intake.clinicalNeeds;
        return needs ? needs.includes(s.need) : false;
      })
    ) {
      score += 15;
      overlapping.push('specialty_match');
    }

    if (
      clinician.languagesSpoken &&
      clinician.languagesSpoken.some((l) => l.language === intake.language)
    ) {
      score += 10;
      overlapping.push('language');
    }

    if (
      clinician.statesLicensed &&
      clinician.statesLicensed.some((s) => s.state === intake.state)
    ) {
      score += 10;
      overlapping.push('state');
    }

    if (
      intake.genderPreference &&
      clinician.gender === intake.genderPreference
    ) {
      score += 5;
      overlapping.push('gender');
    }

    if (
      clinician.appointmentTypes &&
      clinician.appointmentTypes.some((a) => a.type === intake.appointmentType)
    ) {
      score += 5;
      overlapping.push('appointment_type');
    }

    if (
      intake.preferredTimeSlots &&
      clinician.availableTimeSlots &&
      clinician.availableTimeSlots.some((t) =>
        intake.preferredTimeSlots?.includes(t.slot),
      )
    ) {
      score += 5;
      overlapping.push('time_slot');
    }

    return {
      id: clinician.id,
      fullName: clinician.fullName,
      score,
      isAvailableNow: clinician.isAvailableNow,
      overlapping,
      matchCount: clinician.matchCount,
    };
  }
}
