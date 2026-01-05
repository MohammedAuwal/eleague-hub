import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity()
export class Match {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column()
  leagueId: string;

  @Column()
  homeTeamId: string;

  @Column()
  awayTeamId: string;

  @Column({ default: 0 })
  homeGoals: number;

  @Column({ default: 0 })
  awayGoals: number;

  @Column({ default: 'PENDING' })
  status: string;
}