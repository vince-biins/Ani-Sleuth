import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_navigation_state.dart';
part 'dashboard_navigation_cubit.freezed.dart';

class DashboardNavigationCubit extends Cubit<DashboardNavigationState> {
  DashboardNavigationCubit() : super(DashboardNavigationState.idle());

  void navigateToAnimeDetails(int animeId) {
    emit(DashboardNavigationState.navigateToAnimeDetails(animeId));
    emit(const DashboardNavigationState.idle());
  }

  void navigateToMangaDetails(int characterId) {
    emit(DashboardNavigationState.navigateToMangaDetails(characterId));
    emit(const DashboardNavigationState.idle());
  }

  void popDashboardNavigation() {
    emit(const DashboardNavigationState.popDashboardNavigation());
    emit(const DashboardNavigationState.idle());
  }
}
