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

class PushNamedAndRemoveUntilWithArgsNavigation implements NavigationState {
  const PushNamedAndRemoveUntilWithArgsNavigation(
      this.routeName, this.untilRouteName,
      {this.arguments});

  final String routeName;
  final String untilRouteName;
  final Object? arguments;

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

// dart format on
