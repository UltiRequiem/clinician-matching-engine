export enum UrgencyLevel {
  immediate = "immediate",
  flexible = "flexible",
}

export interface MatchIntakeDto {
  state: string;
  language: string;
  genderPreference?: string;
  insuranceProvider: string;
  appointmentType: string;
  clinicalNeeds: string[];
  preferredTimeSlots?: string[];
  urgencyLevel: UrgencyLevel;
}

export interface ClinicianWithRelations {
  id: string;
  fullName: string;
  gender: string;
  isAvailableNow: boolean;
  matchCount: number;
  createdAt: string;
  statesLicensed: any[];
  languagesSpoken: any[];
  insurancesAccepted: any[];
  appointmentTypes: any[];
  clinicalSpecialties: any[];
  availableTimeSlots: any[];
  matchLogs?: any[];
}

export interface ClinicianMatchScore {
  id: string;
  fullName: string;
  score: number;
  isAvailableNow: boolean;
  overlapping: string[];
  matchCount: number;
}
