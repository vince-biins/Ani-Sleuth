// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_navigation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardNavigationState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DashboardNavigationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DashboardNavigationState()';
  }
}

/// @nodoc
class $DashboardNavigationStateCopyWith<$Res> {
  $DashboardNavigationStateCopyWith(
      DashboardNavigationState _, $Res Function(DashboardNavigationState) __);
}

/// @nodoc

class Idle implements DashboardNavigationState {
  const Idle();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DashboardNavigationState.idle()';
  }
}

/// @nodoc

class NavigateToAnimeDetails implements DashboardNavigationState {
  const NavigateToAnimeDetails(this.animeId);

  final int animeId;

  /// Create a copy of DashboardNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NavigateToAnimeDetailsCopyWith<NavigateToAnimeDetails> get copyWith =>
      _$NavigateToAnimeDetailsCopyWithImpl<NavigateToAnimeDetails>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NavigateToAnimeDetails &&
            (identical(other.animeId, animeId) || other.animeId == animeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, animeId);

  @override
  String toString() {
    return 'DashboardNavigationState.navigateToAnimeDetails(animeId: $animeId)';
  }
}

/// @nodoc
abstract mixin class $NavigateToAnimeDetailsCopyWith<$Res>
    implements $DashboardNavigationStateCopyWith<$Res> {
  factory $NavigateToAnimeDetailsCopyWith(NavigateToAnimeDetails value,
          $Res Function(NavigateToAnimeDetails) _then) =
      _$NavigateToAnimeDetailsCopyWithImpl;
  @useResult
  $Res call({int animeId});
}

/// @nodoc
class _$NavigateToAnimeDetailsCopyWithImpl<$Res>
    implements $NavigateToAnimeDetailsCopyWith<$Res> {
  _$NavigateToAnimeDetailsCopyWithImpl(this._self, this._then);

  final NavigateToAnimeDetails _self;
  final $Res Function(NavigateToAnimeDetails) _then;

  /// Create a copy of DashboardNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? animeId = null,
  }) {
    return _then(NavigateToAnimeDetails(
      null == animeId
          ? _self.animeId
          : animeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class NavigateToMangaDetails implements DashboardNavigationState {
  const NavigateToMangaDetails(this.characterId);

  final int characterId;

  /// Create a copy of DashboardNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NavigateToMangaDetailsCopyWith<NavigateToMangaDetails> get copyWith =>
      _$NavigateToMangaDetailsCopyWithImpl<NavigateToMangaDetails>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NavigateToMangaDetails &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characterId);

  @override
  String toString() {
    return 'DashboardNavigationState.navigateToMangaDetails(characterId: $characterId)';
  }
}

/// @nodoc
abstract mixin class $NavigateToMangaDetailsCopyWith<$Res>
    implements $DashboardNavigationStateCopyWith<$Res> {
  factory $NavigateToMangaDetailsCopyWith(NavigateToMangaDetails value,
          $Res Function(NavigateToMangaDetails) _then) =
      _$NavigateToMangaDetailsCopyWithImpl;
  @useResult
  $Res call({int characterId});
}

/// @nodoc
class _$NavigateToMangaDetailsCopyWithImpl<$Res>
    implements $NavigateToMangaDetailsCopyWith<$Res> {
  _$NavigateToMangaDetailsCopyWithImpl(this._self, this._then);

  final NavigateToMangaDetails _self;
  final $Res Function(NavigateToMangaDetails) _then;

  /// Create a copy of DashboardNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? characterId = null,
  }) {
    return _then(NavigateToMangaDetails(
      null == characterId
          ? _self.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class PopDashboardNavigation implements DashboardNavigationState {
  const PopDashboardNavigation();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PopDashboardNavigation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DashboardNavigationState.popDashboardNavigation()';
  }
}

// dart format on
