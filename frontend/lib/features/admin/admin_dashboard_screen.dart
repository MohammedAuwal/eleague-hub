import 'package:flutter/material.dart';
import '../../../core/widgets/glass_card.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Super Admin')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          GlassCard(
            child: ListTile(
              title: const Text('All Leagues'),
              subtitle: const Text('Monitor & suspend leagues'),
            ),
          ),
          const SizedBox(height: 12),
          GlassCard(
            child: ListTile(
              title: const Text('Marketplace Transactions'),
              subtitle: const Text('Escrow & fraud review'),
            ),
          ),
          const SizedBox(height: 12),
          GlassCard(
            child: ListTile(
              title: const Text('User Reports'),
              subtitle: const Text('Bans & warnings'),
            ),
          ),
        ],
      ),
    );
  }
}