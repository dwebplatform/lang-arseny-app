import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { ChallengeRepository } from "./challenge.repository";


@Injectable()
export class ChallengeService {
  constructor(
    @InjectRepository(ChallengeRepository) private challengeRepository: ChallengeRepository,
  ) {}
  async getChallenges(){
    try{
      return await this.challengeRepository.find();
    } catch(e){
      throw new Error('Не удалось получить список вопросов');
    }
  }
}