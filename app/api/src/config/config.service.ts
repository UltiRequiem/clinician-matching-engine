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

  get syphonWebhookUrl(): string {
    return `${this.baseUrl}/webhooks/hti/ready`;
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

  get defaultRateLimit(): number {
    return Number.parseInt(this.envConfig.DEFAULT_RATE_LIMIT || '100', 10);
  }

  get defaultQuotaCents(): number {
    return Number.parseInt(this.envConfig.DEFAULT_QUOTA_CENTS || '1000', 10);
  }

  get s3Region(): string {
    return this.getRequired('S3_REGION');
  }

  get s3AccessKeyId(): string {
    return this.getRequired('S3_ACCESS_KEY_ID');
  }

  get s3SecretAccessKey(): string {
    return this.getRequired('S3_ACCESS_KEY_SECRET');
  }

  get s3BucketName(): string {
    return this.getRequired('S3_BUCKET_NAME');
  }

  get qstashToken(): string {
    return this.getRequired('QSTASH_TOKEN');
  }

  get environment(): string {
    return this.envConfig.ENVIRONMENT || 'development';
  }

  get cerebraServerUrl(): string {
    return this.getRequired('CEREBRA_SERVER_URL');
  }

  get cerebraApiKey(): string {
    return this.getRequired('CEREBRA_API_KEY');
  }

  get mainServerUrl(): string {
    return this.getRequired('MAIN_SERVER_URL');
  }

  get baseUrl(): string {
    return this.getRequired('BASE_URL');
  }

  get syphonServerUrl(): string {
    return this.getRequired('SYPHON_SERVER_URL');
  }

  get syphonApiKey(): string {
    return this.getRequired('SYPHON_API_KEY');
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
