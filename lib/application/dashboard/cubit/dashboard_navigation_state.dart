part of 'dashboard_navigation_cubit.dart';

@freezed
sealed class DashboardNavigationState with _$DashboardNavigationState {
  const factory DashboardNavigationState.idle() = Idle;
  const factory DashboardNavigationState.navigateToAnimeDetails(int animeId) =
      NavigateToAnimeDetails;
  const factory DashboardNavigationState.navigateToMangaDetails(
      int characterId) = NavigateToMangaDetails;
  const factory DashboardNavigationState.popDashboardNavigation() =
      PopDashboardNavigation;
}
