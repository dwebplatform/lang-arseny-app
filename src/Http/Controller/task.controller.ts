
import { Controller, Get } from '@nestjs/common';
import { TaskService } from 'src/Logic/task/task.service';

@Controller('/api/tasks')
export class TaskController {
  constructor(private readonly taskService: TaskService) {}
  @Get('/')
  async getTasks(){
    try{
      const tasks = await this.taskService.getTasks();
      return {
        status:'ok',
        data:{
          tasks
        }
      }
    } catch(e){
      return {
        status:'error',
        msg:'Не удалось получить список задач'
      }
    }
  }
}