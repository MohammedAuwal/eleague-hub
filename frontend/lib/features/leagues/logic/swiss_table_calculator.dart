import '../data/models/match_model.dart';

class SwissTableRow {
  final String teamId;

  int played = 0;
  int wins = 0;
  int draws = 0;
  int losses = 0;
  int goalsFor = 0;
  int goalsAgainst = 0;
  int points = 0;

  int buchholz = 0; // Opponents’ total points

  SwissTableRow(this.teamId);

  int get goalDifference => goalsFor - goalsAgainst;
}

List<SwissTableRow> calculateSwissTable(
  List<String> teams,
  List<Match> matches,
) {
  final Map<String, SwissTableRow> table = {
    for (final team in teams) team: SwissTableRow(team),
  };

  // Base statistics
  for (final match in matches.where(
      (m) => m.status == MatchStatus.completed)) {
    final home = table[match.homeTeamId]!;
    final away = table[match.awayTeamId]!;

    home.played++;
    away.played++;

    home.goalsFor += match.homeGoals;
    home.goalsAgainst += match.awayGoals;
    away.goalsFor += match.awayGoals;
    away.goalsAgainst += match.homeGoals;

    if (match.homeGoals > match.awayGoals) {
      home.wins++;
      home.points += 3;
      away.losses++;
    } else if (match.homeGoals < match.awayGoals) {
      away.wins++;
      away.points += 3;
      home.losses++;
    } else {
      home.draws++;
      away.draws++;
      home.points++;
      away.points++;
    }
  }

  // Buchholz calculation
  for (final match in matches) {
    final home = table[match.homeTeamId]!;
    final away = table[match.awayTeamId]!;

    home.buchholz += away.points;
    away.buchholz += home.points;
  }

  final result = table.values.toList();

  result.sort((a, b) {
    if (b.points != a.points) {
      return b.points.compareTo(a.points);
    }
    if (b.goalDifference != a.goalDifference) {
      return b.goalDifference.compareTo(a.goalDifference);
    }
    if (b.goalsFor != a.goalsFor) {
      return b.goalsFor.compareTo(a.goalsFor);
    }
    return b.buchholz.compareTo(a.buchholz);
  });

  return result;
}