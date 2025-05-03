part of 'navigation_cubit.dart';

@freezed
sealed class NavigationState with _$NavigationState {
  const factory NavigationState.idle() = IdleNavigation;
  const factory NavigationState.navigateTo(
    String routeName, {
    Object? arguments,
  }) = NavigateToNavigation;

  const factory NavigationState.pop() = PopNavigation;
  const factory NavigationState.pushNamedAndRemoveUntil(
    String routeName,
    String untilRouteName, {
    Object? arguments,
  }) = PushNamedAndRemoveUntilNavigation;
  const factory NavigationState.pushNamedAndRemoveUntilWithArgs(
    String routeName,
    String untilRouteName, {
    Object? arguments,
  }) = PushNamedAndRemoveUntilWithArgsNavigation;
}
