// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LibraryEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LibraryEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LibraryEvent()';
  }
}

/// @nodoc

class LoadedLibraryPage implements LibraryEvent {
  const LoadedLibraryPage();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadedLibraryPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LibraryEvent.loadedLibraryPage()';
  }
}

/// @nodoc
mixin _$LibraryData {
  List<TopAnime> get topAnime;

  /// Create a copy of LibraryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LibraryDataCopyWith<LibraryData> get copyWith =>
      _$LibraryDataCopyWithImpl<LibraryData>(this as LibraryData, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LibraryData &&
            const DeepCollectionEquality().equals(other.topAnime, topAnime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(topAnime));

  @override
  String toString() {
    return 'LibraryData(topAnime: $topAnime)';
  }
}

/// @nodoc
abstract mixin class $LibraryDataCopyWith<$Res> {
  factory $LibraryDataCopyWith(
          LibraryData value, $Res Function(LibraryData) _then) =
      _$LibraryDataCopyWithImpl;
  @useResult
  $Res call({List<TopAnime> topAnime});
}

/// @nodoc
class _$LibraryDataCopyWithImpl<$Res> implements $LibraryDataCopyWith<$Res> {
  _$LibraryDataCopyWithImpl(this._self, this._then);

  final LibraryData _self;
  final $Res Function(LibraryData) _then;

  /// Create a copy of LibraryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topAnime = null,
  }) {
    return _then(_self.copyWith(
      topAnime: null == topAnime
          ? _self.topAnime
          : topAnime // ignore: cast_nullable_to_non_nullable
              as List<TopAnime>,
    ));
  }
}

/// @nodoc

class _LibraryData implements LibraryData {
  _LibraryData({required final List<TopAnime> topAnime}) : _topAnime = topAnime;

  final List<TopAnime> _topAnime;
  @override
  List<TopAnime> get topAnime {
    if (_topAnime is EqualUnmodifiableListView) return _topAnime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topAnime);
  }

  /// Create a copy of LibraryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LibraryDataCopyWith<_LibraryData> get copyWith =>
      __$LibraryDataCopyWithImpl<_LibraryData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LibraryData &&
            const DeepCollectionEquality().equals(other._topAnime, _topAnime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_topAnime));

  @override
  String toString() {
    return 'LibraryData(topAnime: $topAnime)';
  }
}

/// @nodoc
abstract mixin class _$LibraryDataCopyWith<$Res>
    implements $LibraryDataCopyWith<$Res> {
  factory _$LibraryDataCopyWith(
          _LibraryData value, $Res Function(_LibraryData) _then) =
      __$LibraryDataCopyWithImpl;
  @override
  @useResult
  $Res call({List<TopAnime> topAnime});
}

/// @nodoc
class __$LibraryDataCopyWithImpl<$Res> implements _$LibraryDataCopyWith<$Res> {
  __$LibraryDataCopyWithImpl(this._self, this._then);

  final _LibraryData _self;
  final $Res Function(_LibraryData) _then;

  /// Create a copy of LibraryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? topAnime = null,
  }) {
    return _then(_LibraryData(
      topAnime: null == topAnime
          ? _self._topAnime
          : topAnime // ignore: cast_nullable_to_non_nullable
              as List<TopAnime>,
    ));
  }
}

// dart format on
