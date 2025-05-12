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
            (identical(other.anime, anime) || other.anime == anime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, anime);

  @override
  String toString() {
    return 'DetailData(anime: $anime)';
  }
}

/// @nodoc
abstract mixin class $DetailDataCopyWith<$Res> {
  factory $DetailDataCopyWith(
          DetailData value, $Res Function(DetailData) _then) =
      _$DetailDataCopyWithImpl;
  @useResult
  $Res call({FullAnime? anime});
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
  }) {
    return _then(_self.copyWith(
      anime: freezed == anime
          ? _self.anime
          : anime // ignore: cast_nullable_to_non_nullable
              as FullAnime?,
    ));
  }
}

/// @nodoc

class _DetailData implements DetailData {
  const _DetailData({required this.anime});

  @override
  final FullAnime? anime;

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
            (identical(other.anime, anime) || other.anime == anime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, anime);

  @override
  String toString() {
    return 'DetailData(anime: $anime)';
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
  $Res call({FullAnime? anime});
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
  }) {
    return _then(_DetailData(
      anime: freezed == anime
          ? _self.anime
          : anime // ignore: cast_nullable_to_non_nullable
              as FullAnime?,
    ));
  }
}

// dart format on
