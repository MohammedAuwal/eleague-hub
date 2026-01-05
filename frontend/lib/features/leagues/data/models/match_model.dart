enum MatchStatus {
  pending,
  completed,
  forfeit,
}

class Match {
  final String id;
  final String homeTeamId;
  final String awayTeamId;
  final int homeGoals;
  final int awayGoals;
  final MatchStatus status;

  Match({
    required this.id,
    required this.homeTeamId,
    required this.awayTeamId,
    required this.homeGoals,
    required this.awayGoals,
    required this.status,
  });
}