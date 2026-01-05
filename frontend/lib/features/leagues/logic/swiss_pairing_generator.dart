import '../data/models/match_model.dart';

class SwissPairingGenerator {
  static List<Match> generateNextRound(
    Map<String, int> teamPoints,
    Set<String> previousPairings,
  ) {
    final List<String> sortedTeams = teamPoints.keys.toList()
      ..sort((a, b) => teamPoints[b]!.compareTo(teamPoints[a]!));

    final List<Match> pairings = [];
    final Set<String> used = {};

    for (int i = 0; i < sortedTeams.length; i++) {
      if (used.contains(sortedTeams[i])) continue;

      for (int j = i + 1; j < sortedTeams.length; j++) {
        final key =
            '${sortedTeams[i]}-${sortedTeams[j]}';

        if (!used.contains(sortedTeams[j]) &&
            !previousPairings.contains(key)) {
          used.add(sortedTeams[i]);
          used.add(sortedTeams[j]);

          pairings.add(
            Match(
              id: key,
              homeTeamId: sortedTeams[i],
              awayTeamId: sortedTeams[j],
              homeGoals: 0,
              awayGoals: 0,
              status: MatchStatus.pending,
            ),
          );
          break;
        }
      }
    }

    return pairings;
  }
}