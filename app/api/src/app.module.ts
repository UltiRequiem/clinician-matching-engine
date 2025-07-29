import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { PrismaModule } from './prisma/prisma.module';
import { ConfigModule } from './config/config.module';
import { DatabaseModule } from './database/database.module';
import { MatchingEngineModule } from './matching-engine/matching-engine.module';

@Module({
  imports: [PrismaModule, ConfigModule, DatabaseModule, MatchingEngineModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
