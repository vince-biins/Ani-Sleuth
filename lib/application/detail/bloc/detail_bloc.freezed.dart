// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DetailEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DetailEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DetailEvent()';
  }
}

/// @nodoc

class LoadedDetailPage implements DetailEvent {
  const LoadedDetailPage();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadedDetailPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DetailEvent.loadedDetailPage()';
  }
}

/// @nodoc

class RefreshedDetailPage implements DetailEvent {
  const RefreshedDetailPage();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RefreshedDetailPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DetailEvent.refresedhDetailPage()';
  }
}

/// @nodoc

class WatchedTrailerDetailPage implements DetailEvent {
  const WatchedTrailerDetailPage();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WatchedTrailerDetailPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DetailEvent.watchedTrailerDetailPage()';
  }
}

/// @nodoc
mixin _$DetailData {
  FullAnime? get anime;
  List<Episode> get episides;

  /// Create a copy of DetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DetailDataCopyWith<DetailData> get copyWith =>
      _$DetailDataCopyWithImpl<DetailData>(this as DetailData, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DetailData &&
            (identical(other.anime, anime) || other.anime == anime) &&
            const DeepCollectionEquality().equals(other.episides, episides));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, anime, const DeepCollectionEquality().hash(episides));

  @override
  String toString() {
    return 'DetailData(anime: $anime, episides: $episides)';
  }
}

/// @nodoc
abstract mixin class $DetailDataCopyWith<$Res> {
  factory $DetailDataCopyWith(
          DetailData value, $Res Function(DetailData) _then) =
      _$DetailDataCopyWithImpl;
  @useResult
  $Res call({FullAnime? anime, List<Episode> episides});
}

/// @nodoc
class _$DetailDataCopyWithImpl<$Res> implements $DetailDataCopyWith<$Res> {
  _$DetailDataCopyWithImpl(this._self, this._then);

  final DetailData _self;
  final $Res Function(DetailData) _then;

  /// Create a copy of DetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anime = freezed,
    Object? episides = null,
  }) {
    return _then(_self.copyWith(
      anime: freezed == anime
          ? _self.anime
          : anime // ignore: cast_nullable_to_non_nullable
              as FullAnime?,
      episides: null == episides
          ? _self.episides
          : episides // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
    ));
  }
}

/// @nodoc

class _DetailData implements DetailData {
  const _DetailData(
      {required this.anime, required final List<Episode> episides})
      : _episides = episides;

  @override
  final FullAnime? anime;
  final List<Episode> _episides;
  @override
  List<Episode> get episides {
    if (_episides is EqualUnmodifiableListView) return _episides;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episides);
  }

  /// Create a copy of DetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DetailDataCopyWith<_DetailData> get copyWith =>
      __$DetailDataCopyWithImpl<_DetailData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetailData &&
            (identical(other.anime, anime) || other.anime == anime) &&
            const DeepCollectionEquality().equals(other._episides, _episides));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, anime, const DeepCollectionEquality().hash(_episides));

  @override
  String toString() {
    return 'DetailData(anime: $anime, episides: $episides)';
  }
}

/// @nodoc
abstract mixin class _$DetailDataCopyWith<$Res>
    implements $DetailDataCopyWith<$Res> {
  factory _$DetailDataCopyWith(
          _DetailData value, $Res Function(_DetailData) _then) =
      __$DetailDataCopyWithImpl;
  @override
  @useResult
  $Res call({FullAnime? anime, List<Episode> episides});
}

/// @nodoc
class __$DetailDataCopyWithImpl<$Res> implements _$DetailDataCopyWith<$Res> {
  __$DetailDataCopyWithImpl(this._self, this._then);

  final _DetailData _self;
  final $Res Function(_DetailData) _then;

  /// Create a copy of DetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? anime = freezed,
    Object? episides = null,
  }) {
    return _then(_DetailData(
      anime: freezed == anime
          ? _self.anime
          : anime // ignore: cast_nullable_to_non_nullable
              as FullAnime?,
      episides: null == episides
          ? _self._episides
          : episides // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
    ));
  }
}

// dart format on
