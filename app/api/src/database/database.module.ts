import { Module } from '@nestjs/common';
import { PrismaModule } from '../prisma/prisma.module';
import { PrismaService } from '../prisma/prisma.service';
import { DatabaseService } from './database.service';

@Module({
  imports: [PrismaModule],
  providers: [DatabaseService, PrismaService],
  exports: [DatabaseService],
})
export class DatabaseModule {}
