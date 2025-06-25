// lib/game/game.dart (DİNAMİK HALİ)

import 'package:flame/game.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:midnight_confessions/game/components/room_scene.dart';
import 'package:midnight_confessions/game_logic/game_bloc.dart';
import 'package:midnight_confessions/models/case_file.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MidnightConfessionsGame extends FlameGame {
  final CaseFile caseFile;
  final GameBloc gameBloc;
  String activeMessage = '';
  Character? currentCharacter;

  MidnightConfessionsGame({required this.caseFile, required this.gameBloc});

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    // Vaka ID'sine göre dinamik olarak ortam sesini yükle ve çal
    final prefs = await SharedPreferences.getInstance();
    final savedVolume = prefs.getDouble('master_volume') ?? 0.8;
    final audioPath = 'case_${caseFile.id.split('_').last}/ambience/storage_room_ambience.mp3';

    // Önceki sesleri durdur (güvenlik önlemi)
    await FlameAudio.bgm.stop();
    FlameAudio.bgm.play(audioPath, volume: savedVolume);

    add(RoomScene());

    // Arayüzleri ekle
    overlays.add('TopBar');
    overlays.add('BottomBar');
  }

  // YENİ: Oyun ekranından çıkıldığında bu fonksiyon çalışacak
  @override
  void onRemove() {
    // Arka plan müziğini durdur
    FlameAudio.bgm.stop();
    super.onRemove();
  }
}