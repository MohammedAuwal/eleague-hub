import 'package:flutter/material.dart';
import '../logic/classic_table_calculator.dart';

class StandingsScreen extends StatelessWidget {
  final List<ClassicTableRow> table;

  const StandingsScreen({super.key, required this.table});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: table.length,
      itemBuilder: (_, index) {
        final row = table[index];
        return ListTile(
          title: Text(row.teamId),
          trailing: Text('${row.points} pts'),
        );
      },
    );
  }
}