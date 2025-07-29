import { Injectable, Logger, OnModuleInit } from '@nestjs/common';
import { PrismaLibSQL } from '@prisma/adapter-libsql';
import { PrismaClient } from '@prisma/client';
import { ConfigService } from '../config/config.service';

class CustomPrismaClient extends PrismaClient {
  static instance: CustomPrismaClient;
  private readonly logger = new Logger(CustomPrismaClient.name);

  constructor(configService: ConfigService) {
    const config: {
      log?: Array<'info' | 'query' | 'warn' | 'error'>;
      adapter?: PrismaLibSQL;
    } = {};

    if (configService.useTurso) {
      const adapter = new PrismaLibSQL({
        url: configService.tursoUrl!,
        authToken: configService.tursoAuthToken!,
      });

      config.adapter = adapter;
    } else {
      config.log = ['error', 'warn', 'info', 'query'];
    }

    super(config);

    if (configService.useTurso) {
      this.logger.log('🚀 Using Turso database in production');
    } else {
      this.logger.log('🏠 Using local SQLite database');
    }

    if (!CustomPrismaClient.instance) {
      CustomPrismaClient.instance = this;
    }
  }
}

@Injectable()
export class PrismaService extends CustomPrismaClient implements OnModuleInit {
  constructor(readonly configService: ConfigService) {
    super(configService);
  }

  async onModuleInit() {
    await this.$connect();
  }
}
