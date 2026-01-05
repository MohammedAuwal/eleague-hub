import 'classic_table_calculator.dart';
import '../data/models/match_model.dart';

Map<String, List<ClassicTableRow>> calculateUclGroupTables(
  Map<String, List<String>> groups,
  List<Match> matches,
) {
  final Map<String, List<ClassicTableRow>> groupTables = {};

  groups.forEach((groupName, teams) {
    final groupMatches = matches.where((match) {
      return teams.contains(match.homeTeamId) &&
             teams.contains(match.awayTeamId);
    }).toList();

    groupTables[groupName] =
        calculateClassicTable(teams, groupMatches);
  });

  return groupTables;
}