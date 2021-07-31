import { Controller, Get } from '@nestjs/common';
import { ChallengeService } from 'src/Logic/challenge/challenge.service';

@Controller('/api/challenges')
export class ChallengeController {
  constructor(private readonly challengeService: ChallengeService) {}
  @Get()
  async getChallenges(){
    try{
      const challenges = await this.challengeService.getChallenges();
      return {
        status:'ok',
        data:{
          challenges
        }
      }
    } catch(e){
      return {
        status: 'error',
        msg: e.msg
      }
    }
  }
}
