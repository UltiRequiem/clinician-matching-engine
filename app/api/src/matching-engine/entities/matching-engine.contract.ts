import {
  Clinician,
  ClinicianInsurance,
  ClinicianClinicalNeed,
  ClinicianLanguage,
  ClinicianState,
  ClinicianAppointmentType,
  ClinicianTimeSlot,
} from '@prisma/client';

export interface ClinicianWithRelations extends Clinician {
  insurancesAccepted: ClinicianInsurance[];
  clinicalSpecialties: ClinicianClinicalNeed[];
  languagesSpoken: ClinicianLanguage[];
  statesLicensed: ClinicianState[];
  appointmentTypes: ClinicianAppointmentType[];
  availableTimeSlots: ClinicianTimeSlot[];
}
