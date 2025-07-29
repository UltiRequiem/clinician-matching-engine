import { Test, TestingModule } from '@nestjs/testing';
import { MatchingEngineService } from './matching-engine.service';
import { DatabaseService } from '../database/database.service';
import { MatchIntakeDto } from './dto/match-intake.dto';
import { ClinicianWithRelations } from './entities/matching-engine.contract';

describe('MatchingEngineService', () => {
  let service: MatchingEngineService;
  let databaseService: DatabaseService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        MatchingEngineService,
        {
          provide: DatabaseService,
          useValue: {
            getCliniciansWithRelations: jest.fn(),
            buildClinicianFilter: jest.fn(),
            listClinicians: jest.fn(),
          },
        },
      ],
    }).compile();

    service = module.get<MatchingEngineService>(MatchingEngineService);
    databaseService = module.get<DatabaseService>(DatabaseService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('matchClinicians', () => {
    it('should return ranked and scored clinicians', async () => {
      const intake: MatchIntakeDto = { insuranceProvider: 'Aetna' } as any;
      const clinicians: ClinicianWithRelations[] = [
        {
          id: 1,
          fullName: 'A',
          isAvailableNow: true,
          insurancesAccepted: [{ insurance: 'Aetna' }],
          matchCount: 0,
        } as any,
        {
          id: 2,
          fullName: 'B',
          isAvailableNow: false,
          insurancesAccepted: [{ insurance: 'Other' }],
          matchCount: 1,
        } as any,
      ];
      (databaseService.buildClinicianFilter as jest.Mock).mockReturnValue({});
      (
        databaseService.getCliniciansWithRelations as jest.Mock
      ).mockResolvedValue(clinicians);
      const result = await service.matchClinicians(intake);
      expect(result[0].score).toBeGreaterThanOrEqual(result[1].score);
    });
  });

  describe('topMatch', () => {
    it('should return explanation for top match', async () => {
      const intake: MatchIntakeDto = { insuranceProvider: 'Aetna' } as any;
      const clinicians: ClinicianWithRelations[] = [
        {
          id: 1,
          fullName: 'A',
          isAvailableNow: true,
          insurancesAccepted: [{ insurance: 'Aetna' }],
          matchCount: 0,
        } as any,
        {
          id: 2,
          fullName: 'B',
          isAvailableNow: false,
          insurancesAccepted: [{ insurance: 'Other' }],
          matchCount: 1,
        } as any,
      ];
      (databaseService.buildClinicianFilter as jest.Mock).mockReturnValue({});
      (
        databaseService.getCliniciansWithRelations as jest.Mock
      ).mockResolvedValue(clinicians);
      const explanation = await service.topMatch(intake);
      expect(explanation).toBeDefined();
    });
  });

  describe('getAllClinicians', () => {
    it('should return all clinicians', async () => {
      const clinicians = [{ id: 1 }, { id: 2 }];
      (databaseService.listClinicians as jest.Mock).mockResolvedValue(
        clinicians,
      );
      const result = await service.getAllClinicians();
      expect(result).toEqual(clinicians);
    });
  });

  describe('scoreClinician', () => {
    it('should score clinician based on matching fields', () => {
      const intake: MatchIntakeDto = {
        insuranceProvider: 'Aetna',
        clinicalNeeds: ['anxiety'],
        language: 'en',
        state: 'NY',
        genderPreference: 'female',
        appointmentType: 'virtual',
        preferredTimeSlots: ['morning'],
      } as any;
      const clinician: ClinicianWithRelations = {
        id: 1,
        fullName: 'A',
        isAvailableNow: true,
        insurancesAccepted: [{ insurance: 'Aetna' }],
        matchCount: 0,
        clinicalSpecialties: [{ need: 'anxiety' }],
        languagesSpoken: [{ language: 'en' }],
        statesLicensed: [{ state: 'NY' }],
        gender: 'female',
        appointmentTypes: [{ type: 'virtual' }],
        availableTimeSlots: [{ slot: 'morning' }],
      } as any;
      const result = (service as any).scoreClinician(clinician, intake);
      expect(result.score).toBeGreaterThan(0);
      expect(result.overlapping.length).toBeGreaterThan(0);
    });

    it('should handle medication appointments with empty clinical needs', () => {
      const intake: MatchIntakeDto = {
        insuranceProvider: 'Aetna',
        clinicalNeeds: [],
        language: 'en',
        state: 'NY',
        appointmentType: 'medication',
      } as any;
      const clinician: ClinicianWithRelations = {
        id: 1,
        fullName: 'A',
        isAvailableNow: true,
        insurancesAccepted: [{ insurance: 'Aetna' }],
        matchCount: 0,
        clinicalSpecialties: [{ need: 'anxiety' }],
        languagesSpoken: [{ language: 'en' }],
        statesLicensed: [{ state: 'NY' }],
        appointmentTypes: [{ type: 'medication' }],
      } as any;
      const result = (service as any).scoreClinician(clinician, intake);
      expect(result.score).toBeGreaterThan(0);
      expect(result.overlapping).toContain('accepts_insurance');
      expect(result.overlapping).toContain('appointment_type');
      expect(result.overlapping).not.toContain('specialty_match');
    });
  });
});
