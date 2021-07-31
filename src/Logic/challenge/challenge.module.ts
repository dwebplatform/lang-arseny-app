import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ChallengeController } from 'src/Http/Controller/challenge.controller';
import { ChallengeRepository } from './challenge.repository';
import { ChallengeService } from './challenge.service';

@Module({
  controllers: [ChallengeController],
  imports: [TypeOrmModule.forFeature([ChallengeRepository])],
  providers: [ChallengeService],
})
export class ChallengeModule {}
