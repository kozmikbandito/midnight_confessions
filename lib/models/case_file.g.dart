// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CaseInfo _$CaseInfoFromJson(Map<String, dynamic> json) => CaseInfo(
      id: json['id'] as String,
      title: json['title'] as String,
      jsonPath: json['json_path'] as String,
    );

Map<String, dynamic> _$CaseInfoToJson(CaseInfo instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'json_path': instance.jsonPath,
    };

_$CaseFileImpl _$$CaseFileImplFromJson(Map<String, dynamic> json) =>
    _$CaseFileImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      location: json['location'] as String,
      victim: Victim.fromJson(json['victim'] as Map<String, dynamic>),
      characters: (json['characters'] as List<dynamic>)
          .map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
      evidence: (json['evidence'] as List<dynamic>)
          .map((e) => Evidence.fromJson(e as Map<String, dynamic>))
          .toList(),
      solution: Solution.fromJson(json['solution'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CaseFileImplToJson(_$CaseFileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'location': instance.location,
      'victim': instance.victim,
      'characters': instance.characters,
      'evidence': instance.evidence,
      'solution': instance.solution,
    };

_$VictimImpl _$$VictimImplFromJson(Map<String, dynamic> json) => _$VictimImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      occupation: json['occupation'] as String,
    );

Map<String, dynamic> _$$VictimImplToJson(_$VictimImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'occupation': instance.occupation,
    };

_$CharacterImpl _$$CharacterImplFromJson(Map<String, dynamic> json) =>
    _$CharacterImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      occupation: json['occupation'] as String,
      initialDialogueNode: json['initialDialogueNode'] as String?,
      dialogues: (json['dialogues'] as List<dynamic>?)
              ?.map((e) => DialogueNode.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CharacterImplToJson(_$CharacterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'occupation': instance.occupation,
      'initialDialogueNode': instance.initialDialogueNode,
      'dialogues': instance.dialogues,
    };

_$CaseInfoImpl _$$CaseInfoImplFromJson(Map<String, dynamic> json) =>
    _$CaseInfoImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      jsonPath: json['json_path'] as String,
    );

Map<String, dynamic> _$$CaseInfoImplToJson(_$CaseInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'json_path': instance.jsonPath,
    };

_$EvidenceImpl _$$EvidenceImplFromJson(Map<String, dynamic> json) =>
    _$EvidenceImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$$EvidenceImplToJson(_$EvidenceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'location': instance.location,
    };

_$DialogueNodeImpl _$$DialogueNodeImplFromJson(Map<String, dynamic> json) =>
    _$DialogueNodeImpl(
      id: json['id'] as String,
      text: json['text'] as String,
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => DialogueOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DialogueNodeImplToJson(_$DialogueNodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'options': instance.options,
    };

_$DialogueOptionImpl _$$DialogueOptionImplFromJson(Map<String, dynamic> json) =>
    _$DialogueOptionImpl(
      text: json['text'] as String,
      nextNodeId: json['nextNodeId'] as String?,
      isDeepQuestion: json['isDeepQuestion'] as bool? ?? false,
    );

Map<String, dynamic> _$$DialogueOptionImplToJson(
        _$DialogueOptionImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'nextNodeId': instance.nextNodeId,
      'isDeepQuestion': instance.isDeepQuestion,
    };

_$SolutionImpl _$$SolutionImplFromJson(Map<String, dynamic> json) =>
    _$SolutionImpl(
      culpritId: json['culpritId'] as String,
      criticalEvidenceIds: (json['criticalEvidenceIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      resolutionText: json['resolutionText'] as String,
    );

Map<String, dynamic> _$$SolutionImplToJson(_$SolutionImpl instance) =>
    <String, dynamic>{
      'culpritId': instance.culpritId,
      'criticalEvidenceIds': instance.criticalEvidenceIds,
      'resolutionText': instance.resolutionText,
    };
