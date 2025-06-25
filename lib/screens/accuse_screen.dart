// lib/screens/accuse_screen.dart
import 'package:midnight_confessions/screens/resolution_screen.dart'; // Import ekle
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midnight_confessions/game_logic/game_bloc.dart';
import 'package:midnight_confessions/models/case_file.dart';

class AccuseScreen extends StatefulWidget {
  final CaseFile caseFile;
  const AccuseScreen({super.key, required this.caseFile});

  @override
  State<AccuseScreen> createState() => _AccuseScreenState();
}

class _AccuseScreenState extends State<AccuseScreen> {
  String? selectedSuspectId;
  final Set<String> selectedEvidenceIds = {};

  void _onConfirmAccusation() {
    // Puanlama ve sonuç ekranına gitme mantığı buraya gelecek.
    if (selectedSuspectId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Lütfen bir şüpheli seçin!')),
      );
      return;
    }

    final solution = widget.caseFile.solution;
    int score = 0;

    // Suçlu doğru mu?
    if (selectedSuspectId == solution.culpritId) {
      score += 100;
    }

    // Kanıtlar ne kadar doğru?
    for (String evidenceId in selectedEvidenceIds) {
      if (solution.criticalEvidenceIds.contains(evidenceId)) {
        score += 50; // Her doğru kanıt için
      } else {
        score -= 25; // Her yanlış kanıt için
      }
    }
    
    // Sonuç ekranına git
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => ResolutionScreen(
          score: score,
          solution: solution,
          wasCorrect: selectedSuspectId == solution.culpritId,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final gameState = context.watch<GameBloc>().state;
    final collectedEvidence = widget.caseFile.evidence
        .where((e) => gameState.collectedEvidenceIds.contains(e.id))
        .toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Suçlama Yap')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 1. Şüpheli Seçimi
            Text('KİMİ SUÇLUYORSUN?', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: widget.caseFile.characters.map((char) {
                final isSelected = selectedSuspectId == char.id;
                return ChoiceChip(
                  label: Text(char.name),
                  selected: isSelected,
                  onSelected: (selected) {
                    setState(() {
                      selectedSuspectId = selected ? char.id : null;
                    });
                  },
                );
              }).toList(),
            ),
            const Divider(height: 40),

            // 2. Kanıt Seçimi
            Text('HANGİ KANITLARLA?', style: Theme.of(context).textTheme.headlineSmall),
            Expanded(
              child: ListView.builder(
                itemCount: collectedEvidence.length,
                itemBuilder: (context, index) {
                  final evidence = collectedEvidence[index];
                  return CheckboxListTile(
                    title: Text(evidence.name),
                    subtitle: Text(evidence.description, maxLines: 1),
                    value: selectedEvidenceIds.contains(evidence.id),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value == true) {
                          selectedEvidenceIds.add(evidence.id);
                        } else {
                          selectedEvidenceIds.remove(evidence.id);
                        }
                      });
                    },
                  );
                },
              ),
            ),

            // 3. Onay Butonu
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _onConfirmAccusation,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[900],
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text('SUÇLAMAYI ONAYLA'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}