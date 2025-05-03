// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NavigationState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NavigationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NavigationState()';
  }
}

/// @nodoc
class $NavigationStateCopyWith<$Res> {
  $NavigationStateCopyWith(
      NavigationState _, $Res Function(NavigationState) __);
}

/// @nodoc

class IdleNavigation implements NavigationState {
  const IdleNavigation();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is IdleNavigation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NavigationState.idle()';
  }
}

/// @nodoc

class NavigateToNavigation implements NavigationState {
  const NavigateToNavigation(this.routeName, {this.arguments});

  final String routeName;
  final Object? arguments;

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NavigateToNavigationCopyWith<NavigateToNavigation> get copyWith =>
      _$NavigateToNavigationCopyWithImpl<NavigateToNavigation>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NavigateToNavigation &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            const DeepCollectionEquality().equals(other.arguments, arguments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, routeName, const DeepCollectionEquality().hash(arguments));

  @override
  String toString() {
    return 'NavigationState.navigateTo(routeName: $routeName, arguments: $arguments)';
  }
}

/// @nodoc
abstract mixin class $NavigateToNavigationCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory $NavigateToNavigationCopyWith(NavigateToNavigation value,
          $Res Function(NavigateToNavigation) _then) =
      _$NavigateToNavigationCopyWithImpl;
  @useResult
  $Res call({String routeName, Object? arguments});
}

/// @nodoc
class _$NavigateToNavigationCopyWithImpl<$Res>
    implements $NavigateToNavigationCopyWith<$Res> {
  _$NavigateToNavigationCopyWithImpl(this._self, this._then);

  final NavigateToNavigation _self;
  final $Res Function(NavigateToNavigation) _then;

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? routeName = null,
    Object? arguments = freezed,
  }) {
    return _then(NavigateToNavigation(
      null == routeName
          ? _self.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: freezed == arguments ? _self.arguments : arguments,
    ));
  }
}

/// @nodoc

class PopNavigation implements NavigationState {
  const PopNavigation();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PopNavigation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NavigationState.pop()';
  }
}

/// @nodoc

class PushNamedAndRemoveUntilNavigation implements NavigationState {
  const PushNamedAndRemoveUntilNavigation(this.routeName, this.untilRouteName,
      {this.arguments});

  final String routeName;
  final String untilRouteName;
  final Object? arguments;

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PushNamedAndRemoveUntilNavigationCopyWith<PushNamedAndRemoveUntilNavigation>
      get copyWith => _$PushNamedAndRemoveUntilNavigationCopyWithImpl<
          PushNamedAndRemoveUntilNavigation>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PushNamedAndRemoveUntilNavigation &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            (identical(other.untilRouteName, untilRouteName) ||
                other.untilRouteName == untilRouteName) &&
            const DeepCollectionEquality().equals(other.arguments, arguments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, routeName, untilRouteName,
      const DeepCollectionEquality().hash(arguments));

  @override
  String toString() {
    return 'NavigationState.pushNamedAndRemoveUntil(routeName: $routeName, untilRouteName: $untilRouteName, arguments: $arguments)';
  }
}

/// @nodoc
abstract mixin class $PushNamedAndRemoveUntilNavigationCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory $PushNamedAndRemoveUntilNavigationCopyWith(
          PushNamedAndRemoveUntilNavigation value,
          $Res Function(PushNamedAndRemoveUntilNavigation) _then) =
      _$PushNamedAndRemoveUntilNavigationCopyWithImpl;
  @useResult
  $Res call({String routeName, String untilRouteName, Object? arguments});
}

/// @nodoc
class _$PushNamedAndRemoveUntilNavigationCopyWithImpl<$Res>
    implements $PushNamedAndRemoveUntilNavigationCopyWith<$Res> {
  _$PushNamedAndRemoveUntilNavigationCopyWithImpl(this._self, this._then);

  final PushNamedAndRemoveUntilNavigation _self;
  final $Res Function(PushNamedAndRemoveUntilNavigation) _then;

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? routeName = null,
    Object? untilRouteName = null,
    Object? arguments = freezed,
  }) {
    return _then(PushNamedAndRemoveUntilNavigation(
      null == routeName
          ? _self.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
      null == untilRouteName
          ? _self.untilRouteName
          : untilRouteName // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: freezed == arguments ? _self.arguments : arguments,
    ));
  }
}

/// @nodoc

class PushNamedAndRemoveUntilWithArgsNavigation implements NavigationState {
  const PushNamedAndRemoveUntilWithArgsNavigation(
      this.routeName, this.untilRouteName,
      {this.arguments});

  final String routeName;
  final String untilRouteName;
  final Object? arguments;

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PushNamedAndRemoveUntilWithArgsNavigationCopyWith<
          PushNamedAndRemoveUntilWithArgsNavigation>
      get copyWith => _$PushNamedAndRemoveUntilWithArgsNavigationCopyWithImpl<
          PushNamedAndRemoveUntilWithArgsNavigation>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PushNamedAndRemoveUntilWithArgsNavigation &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            (identical(other.untilRouteName, untilRouteName) ||
                other.untilRouteName == untilRouteName) &&
            const DeepCollectionEquality().equals(other.arguments, arguments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, routeName, untilRouteName,
      const DeepCollectionEquality().hash(arguments));

  @override
  String toString() {
    return 'NavigationState.pushNamedAndRemoveUntilWithArgs(routeName: $routeName, untilRouteName: $untilRouteName, arguments: $arguments)';
  }
}

/// @nodoc
abstract mixin class $PushNamedAndRemoveUntilWithArgsNavigationCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory $PushNamedAndRemoveUntilWithArgsNavigationCopyWith(
          PushNamedAndRemoveUntilWithArgsNavigation value,
          $Res Function(PushNamedAndRemoveUntilWithArgsNavigation) _then) =
      _$PushNamedAndRemoveUntilWithArgsNavigationCopyWithImpl;
  @useResult
  $Res call({String routeName, String untilRouteName, Object? arguments});
}

/// @nodoc
class _$PushNamedAndRemoveUntilWithArgsNavigationCopyWithImpl<$Res>
    implements $PushNamedAndRemoveUntilWithArgsNavigationCopyWith<$Res> {
  _$PushNamedAndRemoveUntilWithArgsNavigationCopyWithImpl(
      this._self, this._then);

  final PushNamedAndRemoveUntilWithArgsNavigation _self;
  final $Res Function(PushNamedAndRemoveUntilWithArgsNavigation) _then;

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? routeName = null,
    Object? untilRouteName = null,
    Object? arguments = freezed,
  }) {
    return _then(PushNamedAndRemoveUntilWithArgsNavigation(
      null == routeName
          ? _self.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
      null == untilRouteName
          ? _self.untilRouteName
          : untilRouteName // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: freezed == arguments ? _self.arguments : arguments,
    ));
  }
}

// dart format on
