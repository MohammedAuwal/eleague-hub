import 'package:flutter/material.dart';
import '../../../core/widgets/glass_card.dart';

class LiveMatchScreen extends StatelessWidget {
  final String matchId;

  const LiveMatchScreen({super.key, required this.matchId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.black), // stream surface

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: GlassCard(
              child: SizedBox(
                height: 180,
                child: Column(
                  children: const [
                    Text('LIVE CHAT'),
                    Divider(),
                    Expanded(
                      child: Center(
                        child: Text('Messages here'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const Positioned(
            top: 40,
            right: 20,
            child: Chip(
              label: Text('LIVE'),
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}