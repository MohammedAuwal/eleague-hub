import '../data/models/team_model.dart';

class TeamAssignmentService {
  /// Manual add
  static List<Team> addSingleTeam(
    List<Team> existing,
    Team newTeam,
  ) {
    return [...existing, newTeam];
  }

  /// Bulk add
  static List<Team> addTeamsInBulk(
    List<Team> existing,
    List<String> teamNames,
  ) {
    final List<Team> newTeams = teamNames.map((name) {
      return Team(
        id: DateTime.now().microsecondsSinceEpoch.toString() + name,
        name: name,
      );
    }).toList();

    return [...existing, ...newTeams];
  }
}