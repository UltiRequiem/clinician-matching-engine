import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { Prisma, Gender } from '@prisma/client';

@Injectable()
export class DatabaseService {
  constructor(private readonly prisma: PrismaService) {}

  buildClinicianFilter(intake: {
    state: string;
    language: string;
    genderPreference?: string;
    insuranceProvider: string;
    appointmentType: string;
    clinicalNeeds: string[];
    preferredTimeSlots?: string[];
    urgencyLevel: string;
  }): Prisma.ClinicianWhereInput {
    return {
      statesLicensed: { some: { state: intake.state } },
      languagesSpoken: { some: { language: intake.language } },
      ...(intake.genderPreference
        ? { gender: intake.genderPreference as Gender }
        : {}),
      appointmentTypes: {
        some: { type: intake.appointmentType as any },
      },
      insurancesAccepted: { some: { insurance: intake.insuranceProvider } },
      ...(intake.clinicalNeeds && intake.clinicalNeeds.length > 0
        ? {
            clinicalSpecialties: {
              some: { need: { in: intake.clinicalNeeds as any[] } },
            },
          }
        : {}),
      ...(intake.preferredTimeSlots && intake.preferredTimeSlots.length > 0
        ? {
            availableTimeSlots: {
              some: { slot: { in: intake.preferredTimeSlots as any } },
            },
          }
        : {}),
    };
  }
  async getCliniciansWithRelations(filter: Prisma.ClinicianWhereInput = {}) {
    return await this.prisma.clinician.findMany({
      where: filter,
      include: {
        insurancesAccepted: true,
        clinicalSpecialties: true,
        languagesSpoken: true,
        statesLicensed: true,
        appointmentTypes: true,
        availableTimeSlots: true,
      },
    });
  }

  async createPatient(data: Prisma.PatientCreateInput) {
    return await this.prisma.patient.create({ data });
  }

  async getPatientById(id: string) {
    return await this.prisma.patient.findUnique({ where: { id } });
  }

  async updatePatient(id: string, data: Prisma.PatientUpdateInput) {
    return await this.prisma.patient.update({ where: { id }, data });
  }

  async deletePatient(id: string) {
    return await this.prisma.patient.delete({ where: { id } });
  }

  async listPatients(filter: Prisma.PatientWhereInput = {}) {
    return await this.prisma.patient.findMany({ where: filter });
  }

  async createClinician(data: Prisma.ClinicianCreateInput) {
    return await this.prisma.clinician.create({ data });
  }

  async getClinicianById(id: string) {
    return await this.prisma.clinician.findUnique({ where: { id } });
  }

  async updateClinician(id: string, data: Prisma.ClinicianUpdateInput) {
    return await this.prisma.clinician.update({ where: { id }, data });
  }

  async deleteClinician(id: string) {
    return await this.prisma.clinician.delete({ where: { id } });
  }

  async listClinicians(filter: Prisma.ClinicianWhereInput = {}) {
    return await this.prisma.clinician.findMany({ where: filter });
  }

  async logMatch(data: Prisma.MatchLogCreateInput) {
    return await this.prisma.matchLog.create({ data });
  }

  async getMatchLogsByPatient(patientId: string) {
    return await this.prisma.matchLog.findMany({ where: { patientId } });
  }

  async getMatchLogsByClinician(clinicianId: string) {
    return await this.prisma.matchLog.findMany({ where: { clinicianId } });
  }

  async addPatientClinicalNeed(data: Prisma.PatientClinicalNeedCreateInput) {
    return await this.prisma.patientClinicalNeed.create({ data });
  }

  async addClinicianClinicalNeed(
    data: Prisma.ClinicianClinicalNeedCreateInput,
  ) {
    return await this.prisma.clinicianClinicalNeed.create({ data });
  }

  async addPatientTimeSlot(data: Prisma.PatientTimeSlotCreateInput) {
    return await this.prisma.patientTimeSlot.create({ data });
  }

  async addClinicianTimeSlot(data: Prisma.ClinicianTimeSlotCreateInput) {
    return await this.prisma.clinicianTimeSlot.create({ data });
  }

  async findAvailableCliniciansByStateAndLanguage(
    state: string,
    language: string,
  ) {
    return await this.prisma.clinician.findMany({
      where: {
        isAvailableNow: true,
        statesLicensed: { some: { state } },
        languagesSpoken: { some: { language } },
      },
      include: { statesLicensed: true, languagesSpoken: true },
    });
  }
}
