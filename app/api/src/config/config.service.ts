import { Injectable } from '@nestjs/common';

@Injectable()
export class ConfigService {
  private readonly envConfig: NodeJS.ProcessEnv;

  constructor() {
    this.envConfig = process.env;
  }

  get nodeEnv(): string {
    return this.envConfig.NODE_ENV || 'development';
  }

  get isProduction(): boolean {
    return this.nodeEnv === 'production';
  }

  get isDevelopment(): boolean {
    return this.nodeEnv === 'development';
  }

  get port(): number {
    return Number.parseInt(this.envConfig.PORT || '3000', 10);
  }

  get databaseUrl(): string {
    return this.envConfig.DATABASE_URL || 'file:./dev.db';
  }

  get tursoUrl(): string | undefined {
    return this.envConfig.TURSO_DATABASE_URL;
  }

  get tursoAuthToken(): string | undefined {
    return this.envConfig.TURSO_AUTH_TOKEN;
  }

  get useTurso(): boolean {
    return this.isProduction && !!this.tursoUrl && !!this.tursoAuthToken;
  }

  get apiVersion(): string {
    return this.envConfig.API_VERSION || 'v1';
  }

  get apiPrefix(): string {
    return this.envConfig.API_PREFIX || 'api';
  }

  get environment(): string {
    return this.envConfig.ENVIRONMENT || 'development';
  }

  get baseUrl(): string {
    return this.getRequired('BASE_URL');
  }

  get(key: string): string | undefined {
    return this.envConfig[key];
  }

  getRequired(key: string): string {
    const value = this.envConfig[key];

    if (!value) {
      throw new Error(`Environment variable ${key} is required but not set`);
    }

    return value;
  }
}
