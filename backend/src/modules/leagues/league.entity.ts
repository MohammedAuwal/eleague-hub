import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

export enum LeagueType {
  CLASSIC = 'CLASSIC',
  UCL = 'UCL',
  SWISS = 'SWISS',
}

@Entity()
export class League {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column()
  name: string;

  @Column({ type: 'enum', enum: LeagueType })
  type: LeagueType;

  @Column()
  organizerId: string;

  @Column({ default: false })
  isPublic: boolean;

  @Column({ nullable: true })
  entryFee?: number;

  @Column({ default: 'ACTIVE' })
  status: string;
}