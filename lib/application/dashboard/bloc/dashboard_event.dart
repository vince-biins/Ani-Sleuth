part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.base(BaseEvent baseEvent) = BaseDashboardEvent;
  const factory DashboardEvent.clickedAnimeItem(int animeId) = ClickedAnimeItem;
  const factory DashboardEvent.clickedCharacterItem(int characterId) =
      ClickedCharacterItem;
}
