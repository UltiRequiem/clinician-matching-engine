import { Module } from '@nestjs/common';
import { MatchingEngineService } from './matching-engine.service';
import { MatchingEngineController } from './matching-engine.controller';
import { DatabaseModule } from 'src/database/database.module';

@Module({
  imports: [DatabaseModule],
  controllers: [MatchingEngineController],
  providers: [MatchingEngineService],
})
export class MatchingEngineModule {}
