import 'package:flutter/material.dart';
import '../../../core/widgets/glass_card.dart';

class OrganizerDashboardScreen extends StatelessWidget {
  final String leagueId;

  const OrganizerDashboardScreen({super.key, required this.leagueId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Organizer Dashboard')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          GlassCard(
            child: ListTile(
              title: const Text('Pending Match Proofs'),
              subtitle: const Text('Review & approve results'),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
          const SizedBox(height: 12),
          GlassCard(
            child: ListTile(
              title: const Text('League Settings'),
              subtitle: const Text('Teams, format, visibility'),
              trailing: const Icon(Icons.settings),
            ),
          ),
          const SizedBox(height: 12),
          GlassCard(
            child: ListTile(
              title: const Text('Prize Pool'),
              subtitle: const Text('View & distribute winnings'),
              trailing: const Icon(Icons.emoji_events),
            ),
          ),
        ],
      ),
    );
  }
}