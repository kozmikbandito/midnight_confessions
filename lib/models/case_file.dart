// lib/models/case_file.dart (UYARI DÜZELTİLDİ)

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
    required Solution solution, // YENİ: Vakanın çözümünü içerir
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
    // YENİ: Bu karakterin diyalog başlangıç noktasını belirtir.
    String? initialDialogueNode,
    // YENİ: Bu karakterle ilgili tüm diyalogları içerir.
    @Default([]) List<DialogueNode> dialogues,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);
}

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
class CaseInfo with _$CaseInfo {
  const factory CaseInfo({
    required String id,
    required String title,
    @JsonKey(name: 'json_path')
    required String jsonPath,
  }) = _CaseInfo;

  factory CaseInfo.fromJson(Map<String, dynamic> json) => _$CaseInfoFromJson(json);
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

// YENİ: Bir diyalog anını temsil eden model
@freezed
class DialogueNode with _$DialogueNode {
  const factory DialogueNode({
    required String id, // Bu diyalog parçasının ID'si
    required String text, // Karakterin söylediği metin
    @Default([]) List<DialogueOption> options, // Oyuncunun seçebileceği cevaplar/sorular
  }) = _DialogueNode;

  factory DialogueNode.fromJson(Map<String, dynamic> json) => _$DialogueNodeFromJson(json);
}

// YENİ: Oyuncunun bir diyalog seçeneğini temsil eden model
@freezed
class DialogueOption with _$DialogueOption {
  const factory DialogueOption({
    required String text, // Seçeneğin metni
    String? nextNodeId, // Bu seçeneğin yönlendireceği bir sonraki diyalog ID'si
    @Default(false) bool isDeepQuestion, // Bu seçenek yapay zeka sorusu mu?
  }) = _DialogueOption;

  factory DialogueOption.fromJson(Map<String, dynamic> json) => _$DialogueOptionFromJson(json);
}

// YENİ: Vakanın çözüm bilgilerini tutan model
@freezed
class Solution with _$Solution {
  const factory Solution({
    required String culpritId, // Gerçek suçlunun ID'si
    required List<String> criticalEvidenceIds, // Suçu ispatlayan kilit kanıtların ID'leri
    required String resolutionText, // Vakanın nasıl çözüldüğünü anlatan final metni
  }) = _Solution;

  factory Solution.fromJson(Map<String, dynamic> json) => _$SolutionFromJson(json);
}