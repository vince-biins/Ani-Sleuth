part of 'dashboard_bloc.dart';

@freezed
sealed class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.base(BaseEvent baseEvent) = BaseDashboardEvent;
  const factory DashboardEvent.fetchedApiCall() = FetchedApiCall;
}
