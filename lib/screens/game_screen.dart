// lib/screens/game_screen.dart (TAM VE GÜNCELLENMİŞ HALİ)
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midnight_confessions/game/game.dart';
import 'package:midnight_confessions/models/case_file.dart';
import 'package:midnight_confessions/screens/dialogue_overlay.dart'; // YENİ IMPORT
import 'package:midnight_confessions/screens/notebook_screen.dart';
import 'package:midnight_confessions/game_logic/game_bloc.dart'; // BU SATIR EKLENDİ (EĞER YOKSA)
import 'package:midnight_confessions/screens/accuse_screen.dart'; // Import ekle

class GameScreen extends StatelessWidget {
  final CaseFile caseFile;
  const GameScreen({super.key, required this.caseFile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameWidget<MidnightConfessionsGame>(
        game: MidnightConfessionsGame(
          caseFile: caseFile,
          gameBloc: context.read<GameBloc>(),
        ),
        overlayBuilderMap: {
          // YENİ: Diyalog arayüzünü oyuna tanıtıyoruz.
          'DialogueOverlay': (context, game) {
            return DialogueOverlay(game: game);
          },
          'TopBar': (context, game) {
            // Mevcut TopBar içeriği buraya gelecek
            // Örnek olarak placeholder bırakıyorum, kendi TopBar widget'ınızı kullanın
            return Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: const EdgeInsets.all(16.0),
                color: const Color.fromRGBO(0, 0, 0, 0.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(game.caseFile.location, style: const TextStyle(color: Colors.white)),
                    const Text('22:15 - Parçalı Bulutlu', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            );
          },
          'BottomBar': (context, game) {
            // Mevcut BottomBar içeriği buraya gelecek
            // Kendi BottomBar widget'ınızı kullanın, aşağıdaki güncellenmiş haliyle
            return BottomBar(game: game);
          },
          'HotspotDialog': (context, game) {
            // Mevcut HotspotDialog içeriği buraya gelecek
            return Center(
              child: Card(
                color: const Color.fromRGBO(0, 0, 0, 0.8),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(game.activeMessage, style: const TextStyle(color: Colors.white)),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () => game.overlays.remove('HotspotDialog'),
                        child: const Text('Kapat'),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        },
      ),
    );
  }
}

// TopBar widget'ı (Mevcut haliyle bırakılabilir veya güncellenebilir)
class TopBar extends StatelessWidget {
  final MidnightConfessionsGame game;
  const TopBar({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        color: const Color.fromRGBO(0, 0, 0, 0.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(game.caseFile.location, style: const TextStyle(color: Colors.white)),
            const Text('22:15 - Parçalı Bulutlu', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

// BottomBar widget'ını güncelle
class BottomBar extends StatelessWidget {
  final MidnightConfessionsGame game;
  const BottomBar({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>( // BLoC'u dinlemek için BlocBuilder ile sarmala
      builder: (context, state) {
        // En az 3 kanıt toplanmışsa "Suçla" butonu aktif olsun.
        final bool canAccuse = state.collectedEvidenceIds.length >= 3;

        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            color: const Color.fromRGBO(0, 0, 0, 0.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('İncele')),
                ElevatedButton(
                  onPressed: () {
                    // "Konuş" butonuna basılınca:
                    // 1. Amelia karakterini bul.
                    final amelia = game.caseFile.characters.firstWhere(
                      (char) => char.id == 'amelia_kerr',
                    );
                    // 2. Onu oyunun aktif karakteri yap.
                    game.currentCharacter = amelia;
                    // 3. Diyalog arayüzünü göster.
                    game.overlays.add('DialogueOverlay');
                  },
                  child: const Text('Konuş'),
                ),
                ElevatedButton(
                  // YENİ: Suçlama ekranına yönlendirme
                  onPressed: canAccuse
                      ? () {
                          // Suçlama ekranına git
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => AccuseScreen(caseFile: game.caseFile),
                            ),
                          );
                        }
                      : null, // Yeterli kanıt yoksa buton pasif
                  style: ElevatedButton.styleFrom(
                    backgroundColor: canAccuse ? Colors.red[800] : Colors.grey,
                  ),
                  child: const Text('Suçla'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (_) => NotebookScreen(caseFile: game.caseFile),
                    ));
                  },
                  child: const Text('Not Defteri'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}