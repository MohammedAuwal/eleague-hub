import '../data/models/match_model.dart';

class UclFixtureGenerator {
  static Map<String, List<Match>> generateGroupFixtures(
    Map<String, List<String>> groups,
  ) {
    final Map<String, List<Match>> fixtures = {};

    groups.forEach((groupName, teams) {
      fixtures[groupName] =
          _roundRobinForGroup(groupName, teams);
    });

    return fixtures;
  }

  static List<Match> _roundRobinForGroup(
    String group,
    List<String> teams,
  ) {
    final List<Match> matches = [];

    for (int i = 0; i < teams.length; i++) {
      for (int j = i + 1; j < teams.length; j++) {
        matches.add(
          Match(
            id: '$group-${teams[i]}-${teams[j]}',
            homeTeamId: teams[i],
            awayTeamId: teams[j],
            homeGoals: 0,
            awayGoals: 0,
            status: MatchStatus.pending,
          ),
        );
      }
    }
    return matches;
  }
}