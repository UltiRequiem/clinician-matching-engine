import { Controller, Post, Body, Get, Res } from '@nestjs/common';
import { Response } from 'express';
import { MatchingEngineService } from './matching-engine.service';
import { MatchIntakeDto } from './dto/match-intake.dto';

@Controller('matching-engine')
export class MatchingEngineController {
  constructor(private readonly matchingEngineService: MatchingEngineService) {}

  @Post('match')
  async match(@Body() intake: MatchIntakeDto) {
    return this.matchingEngineService.matchClinicians(intake);
  }

  @Post('match/explain')
  async explainMatch(@Body() intake: MatchIntakeDto, @Res() res: Response) {
    res.setHeader('Content-Type', 'text/plain; charset=utf-8');
    res.setHeader('Transfer-Encoding', 'chunked');

    const stream = await this.matchingEngineService.topMatch(intake);

    for await (const chunk of stream) {
      res.write(chunk);
    }

    res.end();
  }

  @Get('clinicians')
  async getAllClinicians() {
    return this.matchingEngineService.getAllClinicians();
  }
}
