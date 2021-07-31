import { Entity, Column, PrimaryGeneratedColumn, OneToMany } from 'typeorm';
import { Challenge } from './challenge.entity';

@Entity('tasks')
export class Task {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  level: string;
  @OneToMany(type => Challenge, (challenge) => challenge.task)
  challenges: Challenge[];
}
