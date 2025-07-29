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
  appointmentType: string;

  @IsArray()
  @IsString({ each: true })
  clinicalNeeds: string[];

  @IsOptional()
  @IsArray()
  @IsString({ each: true })
  preferredTimeSlots?: string[];

  @IsEnum(UrgencyLevel)
  urgencyLevel: UrgencyLevel;
}
