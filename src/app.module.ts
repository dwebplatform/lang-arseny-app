import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { ChallengeModule } from './Logic/challenge/challenge.module';
import { TaskModule } from './Logic/task/task.module';

@Module({
  imports: [TypeOrmModule.forRoot(),ChallengeModule , TaskModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
