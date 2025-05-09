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

class FetchedApiCall implements DashboardEvent {
  const FetchedApiCall();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchedApiCall);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DashboardEvent.fetchedApiCall()';
  }
}

/// @nodoc
mixin _$DashboardData {
  List<SeasonalAnime> get seasonalAnime;
  List<TopAnime> get topAnime;
  List<TopCharacter> get topCharacter;
  List<FullAnime> get mostFavoriteAnime;

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
                .equals(other.topCharacter, topCharacter) &&
            const DeepCollectionEquality()
                .equals(other.mostFavoriteAnime, mostFavoriteAnime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(seasonalAnime),
      const DeepCollectionEquality().hash(topAnime),
      const DeepCollectionEquality().hash(topCharacter),
      const DeepCollectionEquality().hash(mostFavoriteAnime));

  @override
  String toString() {
    return 'DashboardData(seasonalAnime: $seasonalAnime, topAnime: $topAnime, topCharacter: $topCharacter, mostFavoriteAnime: $mostFavoriteAnime)';
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
      List<TopCharacter> topCharacter,
      List<FullAnime> mostFavoriteAnime});
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
    Object? mostFavoriteAnime = null,
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
      mostFavoriteAnime: null == mostFavoriteAnime
          ? _self.mostFavoriteAnime
          : mostFavoriteAnime // ignore: cast_nullable_to_non_nullable
              as List<FullAnime>,
    ));
  }
}

/// @nodoc

class _DashboardData implements DashboardData {
  _DashboardData(
      {required final List<SeasonalAnime> seasonalAnime,
      required final List<TopAnime> topAnime,
      required final List<TopCharacter> topCharacter,
      required final List<FullAnime> mostFavoriteAnime})
      : _seasonalAnime = seasonalAnime,
        _topAnime = topAnime,
        _topCharacter = topCharacter,
        _mostFavoriteAnime = mostFavoriteAnime;

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

  final List<FullAnime> _mostFavoriteAnime;
  @override
  List<FullAnime> get mostFavoriteAnime {
    if (_mostFavoriteAnime is EqualUnmodifiableListView)
      return _mostFavoriteAnime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mostFavoriteAnime);
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
                .equals(other._topCharacter, _topCharacter) &&
            const DeepCollectionEquality()
                .equals(other._mostFavoriteAnime, _mostFavoriteAnime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_seasonalAnime),
      const DeepCollectionEquality().hash(_topAnime),
      const DeepCollectionEquality().hash(_topCharacter),
      const DeepCollectionEquality().hash(_mostFavoriteAnime));

  @override
  String toString() {
    return 'DashboardData(seasonalAnime: $seasonalAnime, topAnime: $topAnime, topCharacter: $topCharacter, mostFavoriteAnime: $mostFavoriteAnime)';
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
      List<TopCharacter> topCharacter,
      List<FullAnime> mostFavoriteAnime});
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
    Object? mostFavoriteAnime = null,
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
      mostFavoriteAnime: null == mostFavoriteAnime
          ? _self._mostFavoriteAnime
          : mostFavoriteAnime // ignore: cast_nullable_to_non_nullable
              as List<FullAnime>,
    ));
  }
}

// dart format on
