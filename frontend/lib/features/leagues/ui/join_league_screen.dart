import 'package:flutter/material.dart';

class JoinLeagueScreen extends StatelessWidget {
  const JoinLeagueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Join League')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(
          decoration: const InputDecoration(
            labelText: 'Enter League ID',
          ),
        ),
      ),
    );
  }
}