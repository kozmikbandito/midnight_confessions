// lib/game/components/room_scene.dart (FLAME 1.17.0 UYUMLU)

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/parallax.dart';
import 'package:midnight_confessions/game/game.dart';
import 'package:midnight_confessions/game_logic/game_bloc.dart';

// DÜZELTME: Tappable yerine TapCallbacks kullanıldı
class Hotspot extends SpriteComponent with TapCallbacks, HasGameReference<MidnightConfessionsGame> {
  final String message;
  final String evidenceId;

  Hotspot({required Vector2 position, required this.message, required this.evidenceId})
      : super(position: position, size: Vector2.all(64));

  @override
  Future<void> onLoad() async {
    sprite = await game.loadSprite('ui/hotspot.png');
  }

  @override
  bool onTapDown(TapDownEvent event) {
    game.overlays.add('HotspotDialog');
    game.activeMessage = message;
    game.gameBloc.add(EvidenceCollected(evidenceId));
    return true;
  }
}

class RoomScene extends ParallaxComponent<MidnightConfessionsGame> {
  @override
  Future<void> onLoad() async {
    parallax = await game.loadParallax(
      [
        ParallaxImageData('rooms/storage_room_bg.png'),
      ],
      baseVelocity: Vector2(10, 0),
      velocityMultiplierDelta: Vector2(1.8, 0),
    );

    add(Hotspot(
      position: Vector2(size.x / 2 + 100, size.y - 100),
      message: 'Yerde bir not defteri var gibi görünüyor.',
      evidenceId: 'e002',
    ));
  }
}