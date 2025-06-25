// lib/screens/game_screen.dart (STANDARTLAŞTIRILMIŞ HALİ)
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midnight_confessions/game/game.dart';
import 'package:midnight_confessions/models/case_file.dart';
import 'package:midnight_confessions/screens/dialogue_overlay.dart';
import 'package:midnight_confessions/screens/notebook_screen.dart';
import 'package:midnight_confessions/game_logic/game_bloc.dart';
import 'package:midnight_confessions/screens/accuse_screen.dart';

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
          'DialogueOverlay': (context, game) {
            return DialogueOverlay(game: game);
          },
          'TopBar': (context, game) {
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
            return BottomBar(game: game);
          },
          'HotspotDialog': (context, game) {
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

class BottomBar extends StatelessWidget {
  final MidnightConfessionsGame game;
  const BottomBar({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        final bool canAccuse = state.collectedEvidenceIds.length >= 3;

        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            color: const Color.fromRGBO(0, 0, 0, 0.5),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 8.0,
              runSpacing: 4.0,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('İncele')),
                ElevatedButton(
                  onPressed: () {
                    // STANDARTLAŞTIRMA: Vaka dosyasındaki ilk karakteri seçer.
                    if (game.caseFile.characters.isNotEmpty) {
                      game.currentCharacter = game.caseFile.characters.first;
                      game.overlays.add('DialogueOverlay');
                    }
                  },
                  child: const Text('Konuş'),
                ),
                ElevatedButton(
                  onPressed: canAccuse
                      ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => AccuseScreen(caseFile: game.caseFile),
                      ),
                    );
                  }
                      : null,
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