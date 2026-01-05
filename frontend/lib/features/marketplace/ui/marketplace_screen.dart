import 'package:flutter/material.dart';
import '../../../core/widgets/glass_card.dart';

class MarketplaceScreen extends StatelessWidget {
  const MarketplaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Marketplace')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 10,
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: GlassCard(
              child: ListTile(
                title: Text('eFootball Account #$i'),
                subtitle: const Text('Rating: 95 | Platform: PS'),
                trailing: const Text('₦50,000'),
              ),
            ),
          );
        },
      ),
    );
  }
}