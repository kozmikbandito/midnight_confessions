// lib/screens/notebook_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:midnight_confessions/game_logic/game_bloc.dart';
import 'package:midnight_confessions/models/case_file.dart';

class NotebookScreen extends StatelessWidget {
  final CaseFile caseFile;
  const NotebookScreen({super.key, required this.caseFile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Not Defteri')),
      body: BlocBuilder<GameBloc, GameState>(
        builder: (context, state) {
          final collectedEvidence = caseFile.evidence
              .where((e) => state.collectedEvidenceIds.contains(e.id))
              .toList();

          if (collectedEvidence.isEmpty) {
            return const Center(child: Text('Henüz hiç kanıt toplanmadı.'));
          }

          return Swiper(
            itemCount: collectedEvidence.length,
            itemBuilder: (context, index) {
              return EvidenceCard(evidence: collectedEvidence[index]);
            },
            layout: SwiperLayout.STACK,
            itemWidth: 300,
            itemHeight: 400,
            onIndexChanged: (index) {
              FlameAudio.play('sfx/card_flip.wav');
            },
          );
        },
      ),
    );
  }
}

class EvidenceCard extends StatelessWidget {
  final Evidence evidence;
  const EvidenceCard({super.key, required this.evidence});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(evidence.name, style: Theme.of(context).textTheme.headlineSmall),
            const Divider(),
            const SizedBox(height: 8),
            Text('Tür: ${evidence.type}', style: Theme.of(context).textTheme.bodySmall),
            Text('Konum: ${evidence.location}', style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Text(evidence.description),
              ),
            ),
          ],
        ),
      ),
    );
  }
}