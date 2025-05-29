// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CharacterEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CharacterEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CharacterEvent()';
  }
}

/// @nodoc

class LoadedCharacterDetailPage implements CharacterEvent {
  const LoadedCharacterDetailPage();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedCharacterDetailPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CharacterEvent.loadedCharacterDetailPage()';
  }
}

/// @nodoc
mixin _$CharacterData {
  Character? get character;

  /// Create a copy of CharacterData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CharacterDataCopyWith<CharacterData> get copyWith =>
      _$CharacterDataCopyWithImpl<CharacterData>(
          this as CharacterData, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CharacterData &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  @override
  String toString() {
    return 'CharacterData(character: $character)';
  }
}

/// @nodoc
abstract mixin class $CharacterDataCopyWith<$Res> {
  factory $CharacterDataCopyWith(
          CharacterData value, $Res Function(CharacterData) _then) =
      _$CharacterDataCopyWithImpl;
  @useResult
  $Res call({Character? character});
}

/// @nodoc
class _$CharacterDataCopyWithImpl<$Res>
    implements $CharacterDataCopyWith<$Res> {
  _$CharacterDataCopyWithImpl(this._self, this._then);

  final CharacterData _self;
  final $Res Function(CharacterData) _then;

  /// Create a copy of CharacterData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = freezed,
  }) {
    return _then(_self.copyWith(
      character: freezed == character
          ? _self.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character?,
    ));
  }
}

/// @nodoc

class _CharacterData implements CharacterData {
  const _CharacterData({required this.character});

  @override
  final Character? character;

  /// Create a copy of CharacterData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CharacterDataCopyWith<_CharacterData> get copyWith =>
      __$CharacterDataCopyWithImpl<_CharacterData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CharacterData &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  @override
  String toString() {
    return 'CharacterData(character: $character)';
  }
}

/// @nodoc
abstract mixin class _$CharacterDataCopyWith<$Res>
    implements $CharacterDataCopyWith<$Res> {
  factory _$CharacterDataCopyWith(
          _CharacterData value, $Res Function(_CharacterData) _then) =
      __$CharacterDataCopyWithImpl;
  @override
  @useResult
  $Res call({Character? character});
}

/// @nodoc
class __$CharacterDataCopyWithImpl<$Res>
    implements _$CharacterDataCopyWith<$Res> {
  __$CharacterDataCopyWithImpl(this._self, this._then);

  final _CharacterData _self;
  final $Res Function(_CharacterData) _then;

  /// Create a copy of CharacterData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? character = freezed,
  }) {
    return _then(_CharacterData(
      character: freezed == character
          ? _self.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character?,
    ));
  }
}

// dart format on
