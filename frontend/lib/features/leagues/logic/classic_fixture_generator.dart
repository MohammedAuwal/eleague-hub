import '../data/models/match_model.dart';

class ClassicFixtureGenerator {
  static List<Match> generateFixtures(List<String> teamIds) {
    final List<Match> fixtures = [];
    final List<String> teams = [...teamIds];

    if (teams.length.isOdd) {
      teams.add('BYE');
    }

    final int rounds = teams.length - 1;
    final int matchesPerRound = teams.length ~/ 2;

    for (int round = 0; round < rounds; round++) {
      for (int i = 0; i < matchesPerRound; i++) {
        final home = teams[i];
        final away = teams[teams.length - 1 - i];

        if (home != 'BYE' && away != 'BYE') {
          fixtures.add(
            Match(
              id: '${round}_$i',
              homeTeamId: home,
              awayTeamId: away,
              homeGoals: 0,
              awayGoals: 0,
              status: MatchStatus.pending,
            ),
          );
        }
      }

      final fixed = teams.removeAt(1);
      teams.add(fixed);
    }

    return fixtures;
  }
}