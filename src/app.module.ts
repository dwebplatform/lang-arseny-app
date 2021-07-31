import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ChallengeModule } from './Logic/challenge/challenge.module';
import { TaskModule } from './Logic/task/task.module';

@Module({
  imports: [TypeOrmModule.forRoot(), ChallengeModule , TaskModule],
})
export class AppModule {}
