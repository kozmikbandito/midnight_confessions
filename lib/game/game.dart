// lib/game/game.dart (FLAME 1.17.0 UYUMLU)

import 'package:flame/game.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:midnight_confessions/game/components/room_scene.dart';
import 'package:midnight_confessions/game_logic/game_bloc.dart';
import 'package:midnight_confessions/models/case_file.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Import ekle

class MidnightConfessionsGame extends FlameGame {
  final CaseFile caseFile;
  final GameBloc gameBloc;
  String activeMessage = '';
  Character? currentCharacter;

  MidnightConfessionsGame({required this.caseFile, required this.gameBloc});

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    camera.viewport.size = size;
    camera.moveTo(Vector2.zero());

    // YENİ: Ses seviyesini cihazdan oku
    final prefs = await SharedPreferences.getInstance();
    final savedVolume = prefs.getDouble('master_volume') ?? 0.8;

    // Arka plan sesini kayıtlı seviyede başlat.
    // Dikkat: Dosya yolunu vaka ID'sine göre dinamik hale getirmemiz gerekecek.
    // Şimdilik case_001 için sabit bırakalım.
    FlameAudio.loop('case_001/ambience/storage_room_ambience.mp3', volume: savedVolume);

    add(RoomScene());

    overlays.add('TopBar');
    overlays.add('BottomBar');
  }
}