import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  BeforeInsert,
  ManyToOne,
  JoinColumn
} from 'typeorm';
import { Task } from './task.entity';

@Entity('challenges')
export class Challenge {

  @PrimaryGeneratedColumn()
  id: number;

  @Column({ type: 'json', default: '{}' })
  expression_list: string;
  
  @Column({ type: 'json', default: '{}' })
  wrong_words: string;
  
  @Column({ type: 'json', default: '{}' })
  correct_tokens: string;
  
  @Column({ type: 'json', default: '[]' })
  dictionary: string;
  
  @Column()
  from: string;
  
  @Column()
  to: string;
  
  @Column()
  type: string;

  @Column()
  taskId: number;
  @ManyToOne(() => Task, (task) => task.challenges)
  @JoinColumn()
  task: Task;
}
