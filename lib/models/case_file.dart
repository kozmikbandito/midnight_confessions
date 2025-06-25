// lib/models/case_file.dart (DÜZELTİLMİŞ HALİ)

import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_file.freezed.dart';
part 'case_file.g.dart';

@freezed
class CaseFile with _$CaseFile {
  const factory CaseFile({
    required String id,
    required String title,
    required String location,
    required Victim victim,
    required List<Character> characters,
    required List<Evidence> evidence,
    required Solution solution,
  }) = _CaseFile;

  factory CaseFile.fromJson(Map<String, dynamic> json) => _$CaseFileFromJson(json['case']);
}

@freezed
class Victim with _$Victim {
  const factory Victim({
    required String id,
    required String name,
    required int age,
    required String occupation,
  }) = _Victim;

  factory Victim.fromJson(Map<String, dynamic> json) => _$VictimFromJson(json);
}

@freezed
class Character with _$Character {
  const factory Character({
    required String id,
    required String name,
    required int age,
    required String occupation,
    String? initialDialogueNode,
    @Default([]) List<DialogueNode> dialogues,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);
}

// SORUN: @JsonSerializable ve @freezed birlikte kullanılmamalı
// ÇÖZÜM: Sadece @freezed kullan, @JsonKey'i doğru yerde kullan
@freezed
class CaseInfo with _$CaseInfo {
  const factory CaseInfo({
    required String id,
    required String title,
    required String jsonPath,
  }) = _CaseInfo;

  factory CaseInfo.fromJson(Map<String, dynamic> json) => CaseInfo(
    id: json['id'] as String,
    title: json['title'] as String,
    jsonPath: json['json_path'] as String,
  );
}

@freezed
class Evidence with _$Evidence {
  const factory Evidence({
    required String id,
    required String name,
    required String description,
    required String type,
    required String location,
  }) = _Evidence;

  factory Evidence.fromJson(Map<String, dynamic> json) => _$EvidenceFromJson(json);
}

@freezed
class DialogueNode with _$DialogueNode {
  const factory DialogueNode({
    required String id,
    required String text,
    @Default([]) List<DialogueOption> options,
  }) = _DialogueNode;

  factory DialogueNode.fromJson(Map<String, dynamic> json) => _$DialogueNodeFromJson(json);
}

@freezed
class DialogueOption with _$DialogueOption {
  const factory DialogueOption({
    required String text,
    String? nextNodeId,
    @Default(false) bool isDeepQuestion,
  }) = _DialogueOption;

  factory DialogueOption.fromJson(Map<String, dynamic> json) => _$DialogueOptionFromJson(json);
}

@freezed
class Solution with _$Solution {
  const factory Solution({
    required String culpritId,
    required List<String> criticalEvidenceIds,
    required String resolutionText,
  }) = _Solution;

  factory Solution.fromJson(Map<String, dynamic> json) => _$SolutionFromJson(json);
}