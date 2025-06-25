// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'case_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CaseFile _$CaseFileFromJson(Map<String, dynamic> json) {
  return _CaseFile.fromJson(json);
}

/// @nodoc
mixin _$CaseFile {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  Victim get victim => throw _privateConstructorUsedError;
  List<Character> get characters => throw _privateConstructorUsedError;
  List<Evidence> get evidence => throw _privateConstructorUsedError;
  Solution get solution => throw _privateConstructorUsedError;

  /// Serializes this CaseFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CaseFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CaseFileCopyWith<CaseFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaseFileCopyWith<$Res> {
  factory $CaseFileCopyWith(CaseFile value, $Res Function(CaseFile) then) =
      _$CaseFileCopyWithImpl<$Res, CaseFile>;
  @useResult
  $Res call(
      {String id,
      String title,
      String location,
      Victim victim,
      List<Character> characters,
      List<Evidence> evidence,
      Solution solution});

  $VictimCopyWith<$Res> get victim;
  $SolutionCopyWith<$Res> get solution;
}

/// @nodoc
class _$CaseFileCopyWithImpl<$Res, $Val extends CaseFile>
    implements $CaseFileCopyWith<$Res> {
  _$CaseFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CaseFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? location = null,
    Object? victim = null,
    Object? characters = null,
    Object? evidence = null,
    Object? solution = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      victim: null == victim
          ? _value.victim
          : victim // ignore: cast_nullable_to_non_nullable
              as Victim,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      evidence: null == evidence
          ? _value.evidence
          : evidence // ignore: cast_nullable_to_non_nullable
              as List<Evidence>,
      solution: null == solution
          ? _value.solution
          : solution // ignore: cast_nullable_to_non_nullable
              as Solution,
    ) as $Val);
  }

  /// Create a copy of CaseFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VictimCopyWith<$Res> get victim {
    return $VictimCopyWith<$Res>(_value.victim, (value) {
      return _then(_value.copyWith(victim: value) as $Val);
    });
  }

  /// Create a copy of CaseFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SolutionCopyWith<$Res> get solution {
    return $SolutionCopyWith<$Res>(_value.solution, (value) {
      return _then(_value.copyWith(solution: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CaseFileImplCopyWith<$Res>
    implements $CaseFileCopyWith<$Res> {
  factory _$$CaseFileImplCopyWith(
          _$CaseFileImpl value, $Res Function(_$CaseFileImpl) then) =
      __$$CaseFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String location,
      Victim victim,
      List<Character> characters,
      List<Evidence> evidence,
      Solution solution});

  @override
  $VictimCopyWith<$Res> get victim;
  @override
  $SolutionCopyWith<$Res> get solution;
}

/// @nodoc
class __$$CaseFileImplCopyWithImpl<$Res>
    extends _$CaseFileCopyWithImpl<$Res, _$CaseFileImpl>
    implements _$$CaseFileImplCopyWith<$Res> {
  __$$CaseFileImplCopyWithImpl(
      _$CaseFileImpl _value, $Res Function(_$CaseFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of CaseFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? location = null,
    Object? victim = null,
    Object? characters = null,
    Object? evidence = null,
    Object? solution = null,
  }) {
    return _then(_$CaseFileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      victim: null == victim
          ? _value.victim
          : victim // ignore: cast_nullable_to_non_nullable
              as Victim,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      evidence: null == evidence
          ? _value._evidence
          : evidence // ignore: cast_nullable_to_non_nullable
              as List<Evidence>,
      solution: null == solution
          ? _value.solution
          : solution // ignore: cast_nullable_to_non_nullable
              as Solution,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CaseFileImpl implements _CaseFile {
  const _$CaseFileImpl(
      {required this.id,
      required this.title,
      required this.location,
      required this.victim,
      required final List<Character> characters,
      required final List<Evidence> evidence,
      required this.solution})
      : _characters = characters,
        _evidence = evidence;

  factory _$CaseFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaseFileImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String location;
  @override
  final Victim victim;
  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  final List<Evidence> _evidence;
  @override
  List<Evidence> get evidence {
    if (_evidence is EqualUnmodifiableListView) return _evidence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evidence);
  }

  @override
  final Solution solution;

  @override
  String toString() {
    return 'CaseFile(id: $id, title: $title, location: $location, victim: $victim, characters: $characters, evidence: $evidence, solution: $solution)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaseFileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.victim, victim) || other.victim == victim) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            const DeepCollectionEquality().equals(other._evidence, _evidence) &&
            (identical(other.solution, solution) ||
                other.solution == solution));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      location,
      victim,
      const DeepCollectionEquality().hash(_characters),
      const DeepCollectionEquality().hash(_evidence),
      solution);

  /// Create a copy of CaseFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CaseFileImplCopyWith<_$CaseFileImpl> get copyWith =>
      __$$CaseFileImplCopyWithImpl<_$CaseFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaseFileImplToJson(
      this,
    );
  }
}

abstract class _CaseFile implements CaseFile {
  const factory _CaseFile(
      {required final String id,
      required final String title,
      required final String location,
      required final Victim victim,
      required final List<Character> characters,
      required final List<Evidence> evidence,
      required final Solution solution}) = _$CaseFileImpl;

  factory _CaseFile.fromJson(Map<String, dynamic> json) =
      _$CaseFileImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get location;
  @override
  Victim get victim;
  @override
  List<Character> get characters;
  @override
  List<Evidence> get evidence;
  @override
  Solution get solution;

  /// Create a copy of CaseFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CaseFileImplCopyWith<_$CaseFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Victim _$VictimFromJson(Map<String, dynamic> json) {
  return _Victim.fromJson(json);
}

/// @nodoc
mixin _$Victim {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get occupation => throw _privateConstructorUsedError;

  /// Serializes this Victim to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Victim
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VictimCopyWith<Victim> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VictimCopyWith<$Res> {
  factory $VictimCopyWith(Victim value, $Res Function(Victim) then) =
      _$VictimCopyWithImpl<$Res, Victim>;
  @useResult
  $Res call({String id, String name, int age, String occupation});
}

/// @nodoc
class _$VictimCopyWithImpl<$Res, $Val extends Victim>
    implements $VictimCopyWith<$Res> {
  _$VictimCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Victim
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? age = null,
    Object? occupation = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      occupation: null == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VictimImplCopyWith<$Res> implements $VictimCopyWith<$Res> {
  factory _$$VictimImplCopyWith(
          _$VictimImpl value, $Res Function(_$VictimImpl) then) =
      __$$VictimImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, int age, String occupation});
}

/// @nodoc
class __$$VictimImplCopyWithImpl<$Res>
    extends _$VictimCopyWithImpl<$Res, _$VictimImpl>
    implements _$$VictimImplCopyWith<$Res> {
  __$$VictimImplCopyWithImpl(
      _$VictimImpl _value, $Res Function(_$VictimImpl) _then)
      : super(_value, _then);

  /// Create a copy of Victim
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? age = null,
    Object? occupation = null,
  }) {
    return _then(_$VictimImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      occupation: null == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VictimImpl implements _Victim {
  const _$VictimImpl(
      {required this.id,
      required this.name,
      required this.age,
      required this.occupation});

  factory _$VictimImpl.fromJson(Map<String, dynamic> json) =>
      _$$VictimImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int age;
  @override
  final String occupation;

  @override
  String toString() {
    return 'Victim(id: $id, name: $name, age: $age, occupation: $occupation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VictimImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, age, occupation);

  /// Create a copy of Victim
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VictimImplCopyWith<_$VictimImpl> get copyWith =>
      __$$VictimImplCopyWithImpl<_$VictimImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VictimImplToJson(
      this,
    );
  }
}

abstract class _Victim implements Victim {
  const factory _Victim(
      {required final String id,
      required final String name,
      required final int age,
      required final String occupation}) = _$VictimImpl;

  factory _Victim.fromJson(Map<String, dynamic> json) = _$VictimImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get age;
  @override
  String get occupation;

  /// Create a copy of Victim
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VictimImplCopyWith<_$VictimImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return _Character.fromJson(json);
}

/// @nodoc
mixin _$Character {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get occupation =>
      throw _privateConstructorUsedError; // YENİ: Bu karakterin diyalog başlangıç noktasını belirtir.
  String? get initialDialogueNode =>
      throw _privateConstructorUsedError; // YENİ: Bu karakterle ilgili tüm diyalogları içerir.
  List<DialogueNode> get dialogues => throw _privateConstructorUsedError;

  /// Serializes this Character to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Character
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterCopyWith<Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res, Character>;
  @useResult
  $Res call(
      {String id,
      String name,
      int age,
      String occupation,
      String? initialDialogueNode,
      List<DialogueNode> dialogues});
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res, $Val extends Character>
    implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Character
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? age = null,
    Object? occupation = null,
    Object? initialDialogueNode = freezed,
    Object? dialogues = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      occupation: null == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String,
      initialDialogueNode: freezed == initialDialogueNode
          ? _value.initialDialogueNode
          : initialDialogueNode // ignore: cast_nullable_to_non_nullable
              as String?,
      dialogues: null == dialogues
          ? _value.dialogues
          : dialogues // ignore: cast_nullable_to_non_nullable
              as List<DialogueNode>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterImplCopyWith<$Res>
    implements $CharacterCopyWith<$Res> {
  factory _$$CharacterImplCopyWith(
          _$CharacterImpl value, $Res Function(_$CharacterImpl) then) =
      __$$CharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int age,
      String occupation,
      String? initialDialogueNode,
      List<DialogueNode> dialogues});
}

/// @nodoc
class __$$CharacterImplCopyWithImpl<$Res>
    extends _$CharacterCopyWithImpl<$Res, _$CharacterImpl>
    implements _$$CharacterImplCopyWith<$Res> {
  __$$CharacterImplCopyWithImpl(
      _$CharacterImpl _value, $Res Function(_$CharacterImpl) _then)
      : super(_value, _then);

  /// Create a copy of Character
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? age = null,
    Object? occupation = null,
    Object? initialDialogueNode = freezed,
    Object? dialogues = null,
  }) {
    return _then(_$CharacterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      occupation: null == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String,
      initialDialogueNode: freezed == initialDialogueNode
          ? _value.initialDialogueNode
          : initialDialogueNode // ignore: cast_nullable_to_non_nullable
              as String?,
      dialogues: null == dialogues
          ? _value._dialogues
          : dialogues // ignore: cast_nullable_to_non_nullable
              as List<DialogueNode>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterImpl implements _Character {
  const _$CharacterImpl(
      {required this.id,
      required this.name,
      required this.age,
      required this.occupation,
      this.initialDialogueNode,
      final List<DialogueNode> dialogues = const []})
      : _dialogues = dialogues;

  factory _$CharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int age;
  @override
  final String occupation;
// YENİ: Bu karakterin diyalog başlangıç noktasını belirtir.
  @override
  final String? initialDialogueNode;
// YENİ: Bu karakterle ilgili tüm diyalogları içerir.
  final List<DialogueNode> _dialogues;
// YENİ: Bu karakterle ilgili tüm diyalogları içerir.
  @override
  @JsonKey()
  List<DialogueNode> get dialogues {
    if (_dialogues is EqualUnmodifiableListView) return _dialogues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dialogues);
  }

  @override
  String toString() {
    return 'Character(id: $id, name: $name, age: $age, occupation: $occupation, initialDialogueNode: $initialDialogueNode, dialogues: $dialogues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.initialDialogueNode, initialDialogueNode) ||
                other.initialDialogueNode == initialDialogueNode) &&
            const DeepCollectionEquality()
                .equals(other._dialogues, _dialogues));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, age, occupation,
      initialDialogueNode, const DeepCollectionEquality().hash(_dialogues));

  /// Create a copy of Character
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      __$$CharacterImplCopyWithImpl<_$CharacterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterImplToJson(
      this,
    );
  }
}

abstract class _Character implements Character {
  const factory _Character(
      {required final String id,
      required final String name,
      required final int age,
      required final String occupation,
      final String? initialDialogueNode,
      final List<DialogueNode> dialogues}) = _$CharacterImpl;

  factory _Character.fromJson(Map<String, dynamic> json) =
      _$CharacterImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get age;
  @override
  String
      get occupation; // YENİ: Bu karakterin diyalog başlangıç noktasını belirtir.
  @override
  String?
      get initialDialogueNode; // YENİ: Bu karakterle ilgili tüm diyalogları içerir.
  @override
  List<DialogueNode> get dialogues;

  /// Create a copy of Character
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CaseInfo _$CaseInfoFromJson(Map<String, dynamic> json) {
  return _CaseInfo.fromJson(json);
}

/// @nodoc
mixin _$CaseInfo {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'json_path')
  String get jsonPath => throw _privateConstructorUsedError;

  /// Serializes this CaseInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CaseInfoCopyWith<CaseInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaseInfoCopyWith<$Res> {
  factory $CaseInfoCopyWith(CaseInfo value, $Res Function(CaseInfo) then) =
      _$CaseInfoCopyWithImpl<$Res, CaseInfo>;
  @useResult
  $Res call(
      {String id, String title, @JsonKey(name: 'json_path') String jsonPath});
}

/// @nodoc
class _$CaseInfoCopyWithImpl<$Res, $Val extends CaseInfo>
    implements $CaseInfoCopyWith<$Res> {
  _$CaseInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? jsonPath = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      jsonPath: null == jsonPath
          ? _value.jsonPath
          : jsonPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CaseInfoImplCopyWith<$Res>
    implements $CaseInfoCopyWith<$Res> {
  factory _$$CaseInfoImplCopyWith(
          _$CaseInfoImpl value, $Res Function(_$CaseInfoImpl) then) =
      __$$CaseInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String title, @JsonKey(name: 'json_path') String jsonPath});
}

/// @nodoc
class __$$CaseInfoImplCopyWithImpl<$Res>
    extends _$CaseInfoCopyWithImpl<$Res, _$CaseInfoImpl>
    implements _$$CaseInfoImplCopyWith<$Res> {
  __$$CaseInfoImplCopyWithImpl(
      _$CaseInfoImpl _value, $Res Function(_$CaseInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? jsonPath = null,
  }) {
    return _then(_$CaseInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      jsonPath: null == jsonPath
          ? _value.jsonPath
          : jsonPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CaseInfoImpl implements _CaseInfo {
  const _$CaseInfoImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'json_path') required this.jsonPath});

  factory _$CaseInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaseInfoImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey(name: 'json_path')
  final String jsonPath;

  @override
  String toString() {
    return 'CaseInfo(id: $id, title: $title, jsonPath: $jsonPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaseInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.jsonPath, jsonPath) ||
                other.jsonPath == jsonPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, jsonPath);

  /// Create a copy of CaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CaseInfoImplCopyWith<_$CaseInfoImpl> get copyWith =>
      __$$CaseInfoImplCopyWithImpl<_$CaseInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaseInfoImplToJson(
      this,
    );
  }
}

abstract class _CaseInfo implements CaseInfo {
  const factory _CaseInfo(
          {required final String id,
          required final String title,
          @JsonKey(name: 'json_path') required final String jsonPath}) =
      _$CaseInfoImpl;

  factory _CaseInfo.fromJson(Map<String, dynamic> json) =
      _$CaseInfoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'json_path')
  String get jsonPath;

  /// Create a copy of CaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CaseInfoImplCopyWith<_$CaseInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Evidence _$EvidenceFromJson(Map<String, dynamic> json) {
  return _Evidence.fromJson(json);
}

/// @nodoc
mixin _$Evidence {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  /// Serializes this Evidence to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Evidence
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EvidenceCopyWith<Evidence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvidenceCopyWith<$Res> {
  factory $EvidenceCopyWith(Evidence value, $Res Function(Evidence) then) =
      _$EvidenceCopyWithImpl<$Res, Evidence>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String type,
      String location});
}

/// @nodoc
class _$EvidenceCopyWithImpl<$Res, $Val extends Evidence>
    implements $EvidenceCopyWith<$Res> {
  _$EvidenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Evidence
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EvidenceImplCopyWith<$Res>
    implements $EvidenceCopyWith<$Res> {
  factory _$$EvidenceImplCopyWith(
          _$EvidenceImpl value, $Res Function(_$EvidenceImpl) then) =
      __$$EvidenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String type,
      String location});
}

/// @nodoc
class __$$EvidenceImplCopyWithImpl<$Res>
    extends _$EvidenceCopyWithImpl<$Res, _$EvidenceImpl>
    implements _$$EvidenceImplCopyWith<$Res> {
  __$$EvidenceImplCopyWithImpl(
      _$EvidenceImpl _value, $Res Function(_$EvidenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Evidence
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? location = null,
  }) {
    return _then(_$EvidenceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EvidenceImpl implements _Evidence {
  const _$EvidenceImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.type,
      required this.location});

  factory _$EvidenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$EvidenceImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String type;
  @override
  final String location;

  @override
  String toString() {
    return 'Evidence(id: $id, name: $name, description: $description, type: $type, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvidenceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, type, location);

  /// Create a copy of Evidence
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EvidenceImplCopyWith<_$EvidenceImpl> get copyWith =>
      __$$EvidenceImplCopyWithImpl<_$EvidenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvidenceImplToJson(
      this,
    );
  }
}

abstract class _Evidence implements Evidence {
  const factory _Evidence(
      {required final String id,
      required final String name,
      required final String description,
      required final String type,
      required final String location}) = _$EvidenceImpl;

  factory _Evidence.fromJson(Map<String, dynamic> json) =
      _$EvidenceImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get type;
  @override
  String get location;

  /// Create a copy of Evidence
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EvidenceImplCopyWith<_$EvidenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DialogueNode _$DialogueNodeFromJson(Map<String, dynamic> json) {
  return _DialogueNode.fromJson(json);
}

/// @nodoc
mixin _$DialogueNode {
  String get id =>
      throw _privateConstructorUsedError; // Bu diyalog parçasının ID'si
  String get text =>
      throw _privateConstructorUsedError; // Karakterin söylediği metin
  List<DialogueOption> get options => throw _privateConstructorUsedError;

  /// Serializes this DialogueNode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DialogueNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DialogueNodeCopyWith<DialogueNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogueNodeCopyWith<$Res> {
  factory $DialogueNodeCopyWith(
          DialogueNode value, $Res Function(DialogueNode) then) =
      _$DialogueNodeCopyWithImpl<$Res, DialogueNode>;
  @useResult
  $Res call({String id, String text, List<DialogueOption> options});
}

/// @nodoc
class _$DialogueNodeCopyWithImpl<$Res, $Val extends DialogueNode>
    implements $DialogueNodeCopyWith<$Res> {
  _$DialogueNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DialogueNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<DialogueOption>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DialogueNodeImplCopyWith<$Res>
    implements $DialogueNodeCopyWith<$Res> {
  factory _$$DialogueNodeImplCopyWith(
          _$DialogueNodeImpl value, $Res Function(_$DialogueNodeImpl) then) =
      __$$DialogueNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String text, List<DialogueOption> options});
}

/// @nodoc
class __$$DialogueNodeImplCopyWithImpl<$Res>
    extends _$DialogueNodeCopyWithImpl<$Res, _$DialogueNodeImpl>
    implements _$$DialogueNodeImplCopyWith<$Res> {
  __$$DialogueNodeImplCopyWithImpl(
      _$DialogueNodeImpl _value, $Res Function(_$DialogueNodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DialogueNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? options = null,
  }) {
    return _then(_$DialogueNodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<DialogueOption>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DialogueNodeImpl implements _DialogueNode {
  const _$DialogueNodeImpl(
      {required this.id,
      required this.text,
      final List<DialogueOption> options = const []})
      : _options = options;

  factory _$DialogueNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DialogueNodeImplFromJson(json);

  @override
  final String id;
// Bu diyalog parçasının ID'si
  @override
  final String text;
// Karakterin söylediği metin
  final List<DialogueOption> _options;
// Karakterin söylediği metin
  @override
  @JsonKey()
  List<DialogueOption> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'DialogueNode(id: $id, text: $text, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DialogueNodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, text, const DeepCollectionEquality().hash(_options));

  /// Create a copy of DialogueNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DialogueNodeImplCopyWith<_$DialogueNodeImpl> get copyWith =>
      __$$DialogueNodeImplCopyWithImpl<_$DialogueNodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DialogueNodeImplToJson(
      this,
    );
  }
}

abstract class _DialogueNode implements DialogueNode {
  const factory _DialogueNode(
      {required final String id,
      required final String text,
      final List<DialogueOption> options}) = _$DialogueNodeImpl;

  factory _DialogueNode.fromJson(Map<String, dynamic> json) =
      _$DialogueNodeImpl.fromJson;

  @override
  String get id; // Bu diyalog parçasının ID'si
  @override
  String get text; // Karakterin söylediği metin
  @override
  List<DialogueOption> get options;

  /// Create a copy of DialogueNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DialogueNodeImplCopyWith<_$DialogueNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DialogueOption _$DialogueOptionFromJson(Map<String, dynamic> json) {
  return _DialogueOption.fromJson(json);
}

/// @nodoc
mixin _$DialogueOption {
  String get text => throw _privateConstructorUsedError; // Seçeneğin metni
  String? get nextNodeId =>
      throw _privateConstructorUsedError; // Bu seçeneğin yönlendireceği bir sonraki diyalog ID'si
  bool get isDeepQuestion => throw _privateConstructorUsedError;

  /// Serializes this DialogueOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DialogueOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DialogueOptionCopyWith<DialogueOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogueOptionCopyWith<$Res> {
  factory $DialogueOptionCopyWith(
          DialogueOption value, $Res Function(DialogueOption) then) =
      _$DialogueOptionCopyWithImpl<$Res, DialogueOption>;
  @useResult
  $Res call({String text, String? nextNodeId, bool isDeepQuestion});
}

/// @nodoc
class _$DialogueOptionCopyWithImpl<$Res, $Val extends DialogueOption>
    implements $DialogueOptionCopyWith<$Res> {
  _$DialogueOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DialogueOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? nextNodeId = freezed,
    Object? isDeepQuestion = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      nextNodeId: freezed == nextNodeId
          ? _value.nextNodeId
          : nextNodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeepQuestion: null == isDeepQuestion
          ? _value.isDeepQuestion
          : isDeepQuestion // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DialogueOptionImplCopyWith<$Res>
    implements $DialogueOptionCopyWith<$Res> {
  factory _$$DialogueOptionImplCopyWith(_$DialogueOptionImpl value,
          $Res Function(_$DialogueOptionImpl) then) =
      __$$DialogueOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String? nextNodeId, bool isDeepQuestion});
}

/// @nodoc
class __$$DialogueOptionImplCopyWithImpl<$Res>
    extends _$DialogueOptionCopyWithImpl<$Res, _$DialogueOptionImpl>
    implements _$$DialogueOptionImplCopyWith<$Res> {
  __$$DialogueOptionImplCopyWithImpl(
      _$DialogueOptionImpl _value, $Res Function(_$DialogueOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DialogueOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? nextNodeId = freezed,
    Object? isDeepQuestion = null,
  }) {
    return _then(_$DialogueOptionImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      nextNodeId: freezed == nextNodeId
          ? _value.nextNodeId
          : nextNodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeepQuestion: null == isDeepQuestion
          ? _value.isDeepQuestion
          : isDeepQuestion // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DialogueOptionImpl implements _DialogueOption {
  const _$DialogueOptionImpl(
      {required this.text, this.nextNodeId, this.isDeepQuestion = false});

  factory _$DialogueOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DialogueOptionImplFromJson(json);

  @override
  final String text;
// Seçeneğin metni
  @override
  final String? nextNodeId;
// Bu seçeneğin yönlendireceği bir sonraki diyalog ID'si
  @override
  @JsonKey()
  final bool isDeepQuestion;

  @override
  String toString() {
    return 'DialogueOption(text: $text, nextNodeId: $nextNodeId, isDeepQuestion: $isDeepQuestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DialogueOptionImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.nextNodeId, nextNodeId) ||
                other.nextNodeId == nextNodeId) &&
            (identical(other.isDeepQuestion, isDeepQuestion) ||
                other.isDeepQuestion == isDeepQuestion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, text, nextNodeId, isDeepQuestion);

  /// Create a copy of DialogueOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DialogueOptionImplCopyWith<_$DialogueOptionImpl> get copyWith =>
      __$$DialogueOptionImplCopyWithImpl<_$DialogueOptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DialogueOptionImplToJson(
      this,
    );
  }
}

abstract class _DialogueOption implements DialogueOption {
  const factory _DialogueOption(
      {required final String text,
      final String? nextNodeId,
      final bool isDeepQuestion}) = _$DialogueOptionImpl;

  factory _DialogueOption.fromJson(Map<String, dynamic> json) =
      _$DialogueOptionImpl.fromJson;

  @override
  String get text; // Seçeneğin metni
  @override
  String?
      get nextNodeId; // Bu seçeneğin yönlendireceği bir sonraki diyalog ID'si
  @override
  bool get isDeepQuestion;

  /// Create a copy of DialogueOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DialogueOptionImplCopyWith<_$DialogueOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Solution _$SolutionFromJson(Map<String, dynamic> json) {
  return _Solution.fromJson(json);
}

/// @nodoc
mixin _$Solution {
  String get culpritId =>
      throw _privateConstructorUsedError; // Gerçek suçlunun ID'si
  List<String> get criticalEvidenceIds =>
      throw _privateConstructorUsedError; // Suçu ispatlayan kilit kanıtların ID'leri
  String get resolutionText => throw _privateConstructorUsedError;

  /// Serializes this Solution to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Solution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SolutionCopyWith<Solution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SolutionCopyWith<$Res> {
  factory $SolutionCopyWith(Solution value, $Res Function(Solution) then) =
      _$SolutionCopyWithImpl<$Res, Solution>;
  @useResult
  $Res call(
      {String culpritId,
      List<String> criticalEvidenceIds,
      String resolutionText});
}

/// @nodoc
class _$SolutionCopyWithImpl<$Res, $Val extends Solution>
    implements $SolutionCopyWith<$Res> {
  _$SolutionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Solution
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? culpritId = null,
    Object? criticalEvidenceIds = null,
    Object? resolutionText = null,
  }) {
    return _then(_value.copyWith(
      culpritId: null == culpritId
          ? _value.culpritId
          : culpritId // ignore: cast_nullable_to_non_nullable
              as String,
      criticalEvidenceIds: null == criticalEvidenceIds
          ? _value.criticalEvidenceIds
          : criticalEvidenceIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      resolutionText: null == resolutionText
          ? _value.resolutionText
          : resolutionText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SolutionImplCopyWith<$Res>
    implements $SolutionCopyWith<$Res> {
  factory _$$SolutionImplCopyWith(
          _$SolutionImpl value, $Res Function(_$SolutionImpl) then) =
      __$$SolutionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String culpritId,
      List<String> criticalEvidenceIds,
      String resolutionText});
}

/// @nodoc
class __$$SolutionImplCopyWithImpl<$Res>
    extends _$SolutionCopyWithImpl<$Res, _$SolutionImpl>
    implements _$$SolutionImplCopyWith<$Res> {
  __$$SolutionImplCopyWithImpl(
      _$SolutionImpl _value, $Res Function(_$SolutionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Solution
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? culpritId = null,
    Object? criticalEvidenceIds = null,
    Object? resolutionText = null,
  }) {
    return _then(_$SolutionImpl(
      culpritId: null == culpritId
          ? _value.culpritId
          : culpritId // ignore: cast_nullable_to_non_nullable
              as String,
      criticalEvidenceIds: null == criticalEvidenceIds
          ? _value._criticalEvidenceIds
          : criticalEvidenceIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      resolutionText: null == resolutionText
          ? _value.resolutionText
          : resolutionText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SolutionImpl implements _Solution {
  const _$SolutionImpl(
      {required this.culpritId,
      required final List<String> criticalEvidenceIds,
      required this.resolutionText})
      : _criticalEvidenceIds = criticalEvidenceIds;

  factory _$SolutionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SolutionImplFromJson(json);

  @override
  final String culpritId;
// Gerçek suçlunun ID'si
  final List<String> _criticalEvidenceIds;
// Gerçek suçlunun ID'si
  @override
  List<String> get criticalEvidenceIds {
    if (_criticalEvidenceIds is EqualUnmodifiableListView)
      return _criticalEvidenceIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_criticalEvidenceIds);
  }

// Suçu ispatlayan kilit kanıtların ID'leri
  @override
  final String resolutionText;

  @override
  String toString() {
    return 'Solution(culpritId: $culpritId, criticalEvidenceIds: $criticalEvidenceIds, resolutionText: $resolutionText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SolutionImpl &&
            (identical(other.culpritId, culpritId) ||
                other.culpritId == culpritId) &&
            const DeepCollectionEquality()
                .equals(other._criticalEvidenceIds, _criticalEvidenceIds) &&
            (identical(other.resolutionText, resolutionText) ||
                other.resolutionText == resolutionText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      culpritId,
      const DeepCollectionEquality().hash(_criticalEvidenceIds),
      resolutionText);

  /// Create a copy of Solution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SolutionImplCopyWith<_$SolutionImpl> get copyWith =>
      __$$SolutionImplCopyWithImpl<_$SolutionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SolutionImplToJson(
      this,
    );
  }
}

abstract class _Solution implements Solution {
  const factory _Solution(
      {required final String culpritId,
      required final List<String> criticalEvidenceIds,
      required final String resolutionText}) = _$SolutionImpl;

  factory _Solution.fromJson(Map<String, dynamic> json) =
      _$SolutionImpl.fromJson;

  @override
  String get culpritId; // Gerçek suçlunun ID'si
  @override
  List<String>
      get criticalEvidenceIds; // Suçu ispatlayan kilit kanıtların ID'leri
  @override
  String get resolutionText;

  /// Create a copy of Solution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SolutionImplCopyWith<_$SolutionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
