import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { TaskController } from 'src/Http/Controller/task.controller';
import { TaskRepository } from './task.repository';
import { TaskService } from './task.service';

@Module({
  controllers: [TaskController],
  imports: [TypeOrmModule.forFeature([TaskRepository])],
  providers: [TaskService],
})
export class TaskModule {}
