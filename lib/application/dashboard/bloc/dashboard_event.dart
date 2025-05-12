part of 'dashboard_bloc.dart';

enum ApiBatch { first, second }

@Freezed(copyWith: false, toJson: false, fromJson: false)
sealed class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.loadPage(ApiBatch batch) = LoadDashboardPage;
  const factory DashboardEvent.refreshPage() = RefreshDashboardPage;
}
