import { AppointmentType, ClinicalNeed, TimeSlot } from '@prisma/client';
import { IsString, IsOptional, IsArray, IsEnum } from 'class-validator';

export enum UrgencyLevel {
  immediate = 'immediate',
  flexible = 'flexible',
}

export class MatchIntakeDto {
  @IsString()
  state: string;

  @IsString()
  language: string;

  @IsOptional()
  @IsString()
  genderPreference?: string;

  @IsString()
  insuranceProvider: string;

  @IsString()
  appointmentType: AppointmentType;

  @IsOptional()
  @IsArray()
  @IsString({ each: true })
  clinicalNeeds?: ClinicalNeed[];

  @IsOptional()
  @IsArray()
  @IsString({ each: true })
  preferredTimeSlots?: TimeSlot[];

  @IsEnum(UrgencyLevel)
  urgencyLevel: UrgencyLevel;
}
