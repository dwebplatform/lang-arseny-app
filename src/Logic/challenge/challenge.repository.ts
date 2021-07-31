import { Challenge } from 'src/models/challenge.entity';
import { EntityRepository, Repository } from 'typeorm';

@EntityRepository(Challenge)
export class ChallengeRepository extends Repository<Challenge> {}
