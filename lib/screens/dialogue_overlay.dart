// lib/screens/dialogue_overlay.dart

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:midnight_confessions/game/game.dart';
import 'package:midnight_confessions/models/case_file.dart';
import 'package:midnight_confessions/services/ai_service.dart';

// Bu widget, Flame oyununun üzerine binen bir Flutter katmanıdır.
// Karakterle olan tüm diyalogları yönetir.
class DialogueOverlay extends StatefulWidget {
  final MidnightConfessionsGame game;
  const DialogueOverlay({super.key, required this.game});

  @override
  State<DialogueOverlay> createState() => _DialogueOverlayState();
}

class _DialogueOverlayState extends State<DialogueOverlay> {
  late Character character;
  late DialogueNode currentNode;
  final AIService aiService = AIService();
  String displayedText = '';
  bool showOptions = false;
  bool isProcessingAI = false;
  Timer? typewriterTimer;

  @override
  void initState() {
    super.initState();
    // Oyundaki aktif karakteri al ve ilk diyalog düğümünü bul.
    character = widget.game.currentCharacter!;
    currentNode = character.dialogues.firstWhere(
      (node) => node.id == character.initialDialogueNode,
    );
    _startTypewriter(currentNode.text);
  }

  @override
  void dispose() {
    // Ekran kapanırken zamanlayıcıyı iptal et.
    typewriterTimer?.cancel();
    super.dispose();
  }

  // Daktilo efekti için metni harf harf gösteren fonksiyon.
  void _startTypewriter(String fullText) {
    setState(() {
      displayedText = '';
      showOptions = false;
      typewriterTimer?.cancel();
    });

    int currentIndex = 0;
    typewriterTimer = Timer.periodic(const Duration(milliseconds: 30), (timer) {
      if (currentIndex < fullText.length) {
        setState(() {
          displayedText += fullText[currentIndex];
        });
        // İsteğe bağlı: Her harf için ses efekti
        FlameAudio.play('sfx/typewriter.wav', volume: 0.5);
        currentIndex++;
      } else {
        timer.cancel();
        setState(() {
          showOptions = true; // Metin bitince seçenekleri göster.
        });
      }
    });
  }

  // Oyuncu bir seçenek seçtiğinde tetiklenir.
  void _onOptionSelected(DialogueOption option) async {
    if (option.isDeepQuestion) {
      // Yapay zeka sorusu
      setState(() {
        isProcessingAI = true;
      });
      final aiResponse = await aiService.getDynamicResponse(character.name, option.text);
      _startTypewriter(aiResponse); // Yapay zeka cevabını daktilo efektiyle yazdır.
      setState(() {
        isProcessingAI = false;
      });
    } else if (option.nextNodeId != null) {
      // Senaryodaki bir sonraki adıma geç
      setState(() {
        currentNode = character.dialogues.firstWhere(
          (node) => node.id == option.nextNodeId,
        );
        _startTypewriter(currentNode.text);
      });
    } else {
      // Diyaloğu bitir
      widget.game.overlays.remove('DialogueOverlay');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(24),
          margin: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 0, 0, 0.85),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white54, width: 2),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Karakter Portresi ve İsmi
              Row(
                children: [
                  Image.asset(
                    'assets/images/case_001/portraits/amelia_kerr.png',
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(width: 16),
                  Text(
                    character.name,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),
                  ),
                ],
              ),
              const Divider(color: Colors.white54),
              const SizedBox(height: 12),
              // Diyalog Metni
              Text(
                displayedText,
                style: const TextStyle(color: Colors.white, fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 20),
              // Seçenekler veya Yükleme Simgesi
              if (showOptions)
                ...currentNode.options.map((option) => Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 8),
                      child: ElevatedButton(
                        onPressed: () => _onOptionSelected(option),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: option.isDeepQuestion ? Colors.deepPurple[700] : null,
                        ),
                        child: Text(option.text),
                      ),
                    ))
              else if (isProcessingAI)
                const Center(child: CircularProgressIndicator())
            ],
          ),
        ),
      ),
    );
  }
}