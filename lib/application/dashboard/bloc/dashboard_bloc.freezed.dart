// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DashboardEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DashboardEvent()';
  }
}

/// @nodoc
class $DashboardEventCopyWith<$Res> {
  $DashboardEventCopyWith(DashboardEvent _, $Res Function(DashboardEvent) __);
}

/// @nodoc

class BaseDashboardEvent implements DashboardEvent {
  const BaseDashboardEvent(this.baseEvent);

  final BaseEvent baseEvent;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BaseDashboardEventCopyWith<BaseDashboardEvent> get copyWith =>
      _$BaseDashboardEventCopyWithImpl<BaseDashboardEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseDashboardEvent &&
            (identical(other.baseEvent, baseEvent) ||
                other.baseEvent == baseEvent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, baseEvent);

  @override
  String toString() {
    return 'DashboardEvent.base(baseEvent: $baseEvent)';
  }
}

/// @nodoc
abstract mixin class $BaseDashboardEventCopyWith<$Res>
    implements $DashboardEventCopyWith<$Res> {
  factory $BaseDashboardEventCopyWith(
          BaseDashboardEvent value, $Res Function(BaseDashboardEvent) _then) =
      _$BaseDashboardEventCopyWithImpl;
  @useResult
  $Res call({BaseEvent baseEvent});

  $BaseEventCopyWith<$Res> get baseEvent;
}

/// @nodoc
class _$BaseDashboardEventCopyWithImpl<$Res>
    implements $BaseDashboardEventCopyWith<$Res> {
  _$BaseDashboardEventCopyWithImpl(this._self, this._then);

  final BaseDashboardEvent _self;
  final $Res Function(BaseDashboardEvent) _then;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? baseEvent = null,
  }) {
    return _then(BaseDashboardEvent(
      null == baseEvent
          ? _self.baseEvent
          : baseEvent // ignore: cast_nullable_to_non_nullable
              as BaseEvent,
    ));
  }

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseEventCopyWith<$Res> get baseEvent {
    return $BaseEventCopyWith<$Res>(_self.baseEvent, (value) {
      return _then(_self.copyWith(baseEvent: value));
    });
  }
}

/// @nodoc

class ClickedAnimeItem implements DashboardEvent {
  const ClickedAnimeItem(this.animeId);

  final int animeId;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClickedAnimeItemCopyWith<ClickedAnimeItem> get copyWith =>
      _$ClickedAnimeItemCopyWithImpl<ClickedAnimeItem>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClickedAnimeItem &&
            (identical(other.animeId, animeId) || other.animeId == animeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, animeId);

  @override
  String toString() {
    return 'DashboardEvent.clickedAnimeItem(animeId: $animeId)';
  }
}

/// @nodoc
abstract mixin class $ClickedAnimeItemCopyWith<$Res>
    implements $DashboardEventCopyWith<$Res> {
  factory $ClickedAnimeItemCopyWith(
          ClickedAnimeItem value, $Res Function(ClickedAnimeItem) _then) =
      _$ClickedAnimeItemCopyWithImpl;
  @useResult
  $Res call({int animeId});
}

/// @nodoc
class _$ClickedAnimeItemCopyWithImpl<$Res>
    implements $ClickedAnimeItemCopyWith<$Res> {
  _$ClickedAnimeItemCopyWithImpl(this._self, this._then);

  final ClickedAnimeItem _self;
  final $Res Function(ClickedAnimeItem) _then;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? animeId = null,
  }) {
    return _then(ClickedAnimeItem(
      null == animeId
          ? _self.animeId
          : animeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class ClickedCharacterItem implements DashboardEvent {
  const ClickedCharacterItem(this.characterId);

  final int characterId;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClickedCharacterItemCopyWith<ClickedCharacterItem> get copyWith =>
      _$ClickedCharacterItemCopyWithImpl<ClickedCharacterItem>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClickedCharacterItem &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characterId);

  @override
  String toString() {
    return 'DashboardEvent.clickedCharacterItem(characterId: $characterId)';
  }
}

/// @nodoc
abstract mixin class $ClickedCharacterItemCopyWith<$Res>
    implements $DashboardEventCopyWith<$Res> {
  factory $ClickedCharacterItemCopyWith(ClickedCharacterItem value,
          $Res Function(ClickedCharacterItem) _then) =
      _$ClickedCharacterItemCopyWithImpl;
  @useResult
  $Res call({int characterId});
}

/// @nodoc
class _$ClickedCharacterItemCopyWithImpl<$Res>
    implements $ClickedCharacterItemCopyWith<$Res> {
  _$ClickedCharacterItemCopyWithImpl(this._self, this._then);

  final ClickedCharacterItem _self;
  final $Res Function(ClickedCharacterItem) _then;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? characterId = null,
  }) {
    return _then(ClickedCharacterItem(
      null == characterId
          ? _self.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$DashboardData {
  List<SeasonalAnime> get seasonalAnime;
  List<TopAnime> get topAnime;
  List<TopCharacter> get topCharacter;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DashboardDataCopyWith<DashboardData> get copyWith =>
      _$DashboardDataCopyWithImpl<DashboardData>(
          this as DashboardData, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DashboardData &&
            const DeepCollectionEquality()
                .equals(other.seasonalAnime, seasonalAnime) &&
            const DeepCollectionEquality().equals(other.topAnime, topAnime) &&
            const DeepCollectionEquality()
                .equals(other.topCharacter, topCharacter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(seasonalAnime),
      const DeepCollectionEquality().hash(topAnime),
      const DeepCollectionEquality().hash(topCharacter));

  @override
  String toString() {
    return 'DashboardData(seasonalAnime: $seasonalAnime, topAnime: $topAnime, topCharacter: $topCharacter)';
  }
}

/// @nodoc
abstract mixin class $DashboardDataCopyWith<$Res> {
  factory $DashboardDataCopyWith(
          DashboardData value, $Res Function(DashboardData) _then) =
      _$DashboardDataCopyWithImpl;
  @useResult
  $Res call(
      {List<SeasonalAnime> seasonalAnime,
      List<TopAnime> topAnime,
      List<TopCharacter> topCharacter});
}

/// @nodoc
class _$DashboardDataCopyWithImpl<$Res>
    implements $DashboardDataCopyWith<$Res> {
  _$DashboardDataCopyWithImpl(this._self, this._then);

  final DashboardData _self;
  final $Res Function(DashboardData) _then;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seasonalAnime = null,
    Object? topAnime = null,
    Object? topCharacter = null,
  }) {
    return _then(_self.copyWith(
      seasonalAnime: null == seasonalAnime
          ? _self.seasonalAnime
          : seasonalAnime // ignore: cast_nullable_to_non_nullable
              as List<SeasonalAnime>,
      topAnime: null == topAnime
          ? _self.topAnime
          : topAnime // ignore: cast_nullable_to_non_nullable
              as List<TopAnime>,
      topCharacter: null == topCharacter
          ? _self.topCharacter
          : topCharacter // ignore: cast_nullable_to_non_nullable
              as List<TopCharacter>,
    ));
  }
}

/// @nodoc

class _DashboardData implements DashboardData {
  _DashboardData(
      {required final List<SeasonalAnime> seasonalAnime,
      required final List<TopAnime> topAnime,
      required final List<TopCharacter> topCharacter})
      : _seasonalAnime = seasonalAnime,
        _topAnime = topAnime,
        _topCharacter = topCharacter;

  final List<SeasonalAnime> _seasonalAnime;
  @override
  List<SeasonalAnime> get seasonalAnime {
    if (_seasonalAnime is EqualUnmodifiableListView) return _seasonalAnime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seasonalAnime);
  }

  final List<TopAnime> _topAnime;
  @override
  List<TopAnime> get topAnime {
    if (_topAnime is EqualUnmodifiableListView) return _topAnime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topAnime);
  }

  final List<TopCharacter> _topCharacter;
  @override
  List<TopCharacter> get topCharacter {
    if (_topCharacter is EqualUnmodifiableListView) return _topCharacter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topCharacter);
  }

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DashboardDataCopyWith<_DashboardData> get copyWith =>
      __$DashboardDataCopyWithImpl<_DashboardData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DashboardData &&
            const DeepCollectionEquality()
                .equals(other._seasonalAnime, _seasonalAnime) &&
            const DeepCollectionEquality().equals(other._topAnime, _topAnime) &&
            const DeepCollectionEquality()
                .equals(other._topCharacter, _topCharacter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_seasonalAnime),
      const DeepCollectionEquality().hash(_topAnime),
      const DeepCollectionEquality().hash(_topCharacter));

  @override
  String toString() {
    return 'DashboardData(seasonalAnime: $seasonalAnime, topAnime: $topAnime, topCharacter: $topCharacter)';
  }
}

/// @nodoc
abstract mixin class _$DashboardDataCopyWith<$Res>
    implements $DashboardDataCopyWith<$Res> {
  factory _$DashboardDataCopyWith(
          _DashboardData value, $Res Function(_DashboardData) _then) =
      __$DashboardDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<SeasonalAnime> seasonalAnime,
      List<TopAnime> topAnime,
      List<TopCharacter> topCharacter});
}

/// @nodoc
class __$DashboardDataCopyWithImpl<$Res>
    implements _$DashboardDataCopyWith<$Res> {
  __$DashboardDataCopyWithImpl(this._self, this._then);

  final _DashboardData _self;
  final $Res Function(_DashboardData) _then;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? seasonalAnime = null,
    Object? topAnime = null,
    Object? topCharacter = null,
  }) {
    return _then(_DashboardData(
      seasonalAnime: null == seasonalAnime
          ? _self._seasonalAnime
          : seasonalAnime // ignore: cast_nullable_to_non_nullable
              as List<SeasonalAnime>,
      topAnime: null == topAnime
          ? _self._topAnime
          : topAnime // ignore: cast_nullable_to_non_nullable
              as List<TopAnime>,
      topCharacter: null == topCharacter
          ? _self._topCharacter
          : topCharacter // ignore: cast_nullable_to_non_nullable
              as List<TopCharacter>,
    ));
  }
}

// dart format on
