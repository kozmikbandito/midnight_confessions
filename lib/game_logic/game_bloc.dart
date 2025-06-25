// lib/game_logic/game_bloc.dart
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:equatable/equatable.dart';

// --- Olaylar (Events): Arayüzden BLoC'a gönderilen komutlar ---
abstract class GameEvent extends Equatable {
  const GameEvent();
  @override
  List<Object> get props => [];
}

class EvidenceCollected extends GameEvent {
  final String evidenceId;
  const EvidenceCollected(this.evidenceId);
  @override
  List<Object> get props => [evidenceId];
}

// --- Durum (State): BLoC'un arayüze sunduğu veri ---
class GameState extends Equatable {
  final Set<String> collectedEvidenceIds; // Toplanan kanıtların ID'lerini tutan set.

  const GameState({this.collectedEvidenceIds = const {}});

  @override
  List<Object> get props => [collectedEvidenceIds];

  // HydratedBloc'un durumu JSON'a çevirmesi için
  Map<String, dynamic> toJson() => {
    'collectedEvidenceIds': collectedEvidenceIds.toList(),
  };

  // HydratedBloc'un JSON'dan durum oluşturması için
  factory GameState.fromJson(Map<String, dynamic> json) => GameState(
    collectedEvidenceIds: Set<String>.from(json['collectedEvidenceIds']),
  );
}

// --- BLoC: Olayları alıp yeni durumlar üreten sınıf ---
class GameBloc extends HydratedBloc<GameEvent, GameState> {
  GameBloc() : super(const GameState()) {
    on<EvidenceCollected>((event, emit) {
      final newSet = Set<String>.from(state.collectedEvidenceIds);
      newSet.add(event.evidenceId);
      emit(GameState(collectedEvidenceIds: newSet));
    });
  }

  @override
  GameState? fromJson(Map<String, dynamic> json) => GameState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(GameState state) => state.toJson();
}