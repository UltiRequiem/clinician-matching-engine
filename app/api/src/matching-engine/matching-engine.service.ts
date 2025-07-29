import { Injectable, Logger } from '@nestjs/common';
import { DatabaseService } from 'src/database/database.service';
import { MatchIntakeDto } from './dto/match-intake.dto';
import {
  ClinicianMatchScore,
  ClinicianWithRelations,
} from './entities/matching-engine.contract';
import { openai } from '@ai-sdk/openai';
import { generateText } from 'ai';
import { Clinician } from '@prisma/client';

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
    const clinicians = await this.databaseService.getCliniciansWithRelations(
      this.databaseService.buildClinicianFilter(intake),
    );

    const topScored = this.rankAndScoreClinicians(clinicians, intake);
    const topMatch = topScored.shift()!;
    const explanation = await this.generateTopMatchExplanation(
      intake,
      topMatch,
    );

    return {
      clinician: topMatch,
      explanation,
    };
  }

  public async getAllClinicians() {
    return await this.databaseService.listClinicians();
  }

  private async generateTopMatchExplanation(
    intake: MatchIntakeDto,
    topMatch: ClinicianMatchScore,
  ) {
    const systemPrompt =
      'You are a helpful assistant that provides concise summaries of clinician matches.';

    const { text } = await generateText({
      model: openai('gpt-4o'),
      messages: [
        {
          role: 'system',
          content: systemPrompt,
        },
        {
          role: 'user',
          content: this.buildUserPrompt(intake, topMatch),
        },
      ],
    });

    return text;
  }

  private buildUserPrompt(
    intake: MatchIntakeDto,
    topScored: ClinicianMatchScore,
  ) {
    return `Given the following clinicians and patient intake, provide a concise summary of the top match:
    Intake: ${JSON.stringify(intake)}
    Clinicians: ${JSON.stringify(topScored)}`;
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
      score += 30;
      overlapping.push('available_now');
    }
    if (
      clinician.insurancesAccepted &&
      clinician.insurancesAccepted.some(
        (i) => i.insurance === intake.insuranceProvider,
      )
    ) {
      score += 25;
      overlapping.push('accepts_insurance');
    }
    score += 10 * (1 / (clinician.matchCount + 1));
    if (
      intake.clinicalNeeds &&
      clinician.clinicalSpecialties &&
      clinician.clinicalSpecialties.some((s) =>
        intake.clinicalNeeds.includes(s.need),
      )
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
