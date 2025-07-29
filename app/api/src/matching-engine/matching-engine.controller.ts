import { Controller, Post, Body, Get } from '@nestjs/common';
import { MatchingEngineService } from './matching-engine.service';
import { MatchIntakeDto } from './dto/match-intake.dto';

@Controller('matching-engine')
export class MatchingEngineController {
  constructor(private readonly matchingEngineService: MatchingEngineService) {}

  @Post('match')
  async match(@Body() intake: MatchIntakeDto) {
    return this.matchingEngineService.matchClinicians(intake);
  }

  @Get('clinicians')
  async getAllClinicians() {
    return this.matchingEngineService.getAllClinicians();
  }
}
