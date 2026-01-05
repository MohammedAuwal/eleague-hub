import { Match } from '../../matches/match.entity';

export function calculateClassicTable(
  teams: string[],
  matches: Match[],
) {
  const table: any = {};

  teams.forEach(t => {
    table[t] = {
      teamId: t,
      played: 0,
      wins: 0,
      draws: 0,
      losses: 0,
      goalsFor: 0,
      goalsAgainst: 0,
      points: 0,
    };
  });

  matches
    .filter(m => m.status === 'COMPLETED')
    .forEach(m => {
      const home = table[m.homeTeamId];
      const away = table[m.awayTeamId];

      home.played++;
      away.played++;

      home.goalsFor += m.homeGoals;
      home.goalsAgainst += m.awayGoals;
      away.goalsFor += m.awayGoals;
      away.goalsAgainst += m.homeGoals;

      if (m.homeGoals > m.awayGoals) {
        home.wins++;
        home.points += 3;
        away.losses++;
      } else if (m.homeGoals < m.awayGoals) {
        away.wins++;
        away.points += 3;
        home.losses++;
      } else {
        home.draws++;
        away.draws++;
        home.points++;
        away.points++;
      }
    });

  return Object.values(table).sort((a: any, b: any) => {
    if (b.points !== a.points) return b.points - a.points;
    const gdA = a.goalsFor - a.goalsAgainst;
    const gdB = b.goalsFor - b.goalsAgainst;
    if (gdB !== gdA) return gdB - gdA;
    return b.goalsFor - a.goalsFor;
  });
}