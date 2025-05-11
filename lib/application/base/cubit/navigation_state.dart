part of 'navigation_cubit.dart';

@Freezed(copyWith: false, toJson: false)
sealed class NavigationState with _$NavigationState {
  const factory NavigationState.idle() = IdleNavigation;
  const factory NavigationState.navigateTo(
    GoRouteData route,
  ) = NavigateToNavigation;

  const factory NavigationState.pop() = PopNavigation;
}
