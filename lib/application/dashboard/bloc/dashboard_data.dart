part of 'dashboard_bloc.dart';

@freezed
abstract class DashboardData with _$DashboardData {
  factory DashboardData({
    required List<SeasonalAnime> seasonalAnime,
    required List<TopAnime> topAnime,
    required List<TopCharacter> topCharacter,
  }) = _DashboardData;
}
