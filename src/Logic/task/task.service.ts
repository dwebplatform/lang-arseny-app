import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { TaskRepository } from "./task.repository";


@Injectable()
export class TaskService {
  constructor(
    @InjectRepository(TaskRepository) private taskRepository: TaskRepository,
  ) {}
  async getTasks(){
    try{
      return await this.taskRepository.find({relations: ['challenges']});
    } catch(e){
      throw new Error('Не удалось получить список задач');
    }
  }
}