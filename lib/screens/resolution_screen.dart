// lib/screens/resolution_screen.dart
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:midnight_confessions/models/case_file.dart';

class ResolutionScreen extends StatelessWidget {
  final int score;
  final Solution solution;
  final bool wasCorrect;

  const ResolutionScreen({
    super.key,
    required this.score,
    required this.solution,
    required this.wasCorrect,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 150,
              child: RiveAnimation.asset(
                'assets/rive/chapter_complete.riv',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              wasCorrect ? 'VAKA ÇÖZÜLDÜ!' : 'YANLIŞ SUÇLAMA',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: wasCorrect ? Colors.greenAccent : Colors.redAccent,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              solution.resolutionText,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Divider(height: 40),
            Text(
              'Puanın: $score',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Ana menüye dönmek için tüm ekranları kapatıp en başa gider.
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: const Text('ANA MENÜYE DÖN'),
            ),
          ],
        ),
      ),
    );
  }
}