import 'dart:async';

import 'package:ani_sleuth/application/base/base_event.dart';
import 'package:ani_sleuth/application/base/base_state.dart';
import 'package:ani_sleuth/domain/model/anime/entity/full_anime.dart';
import 'package:ani_sleuth/domain/model/anime/entity/seasonal_anime.dart';
import 'package:ani_sleuth/domain/model/anime/entity/top_anime.dart';
import 'package:ani_sleuth/domain/model/character/entity/top_character.dart';
import 'package:ani_sleuth/domain/repository/a_dashboard_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_event.dart';
part 'dashboard_data.dart';
part 'dashboard_bloc.freezed.dart';

typedef DashboardState = BaseState<DashboardData>;

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final ADashboardRepository _dashboardRepository;

  // ignore: non_constant_identifier_names
  final int _LIMIT = 25;
  // ignore: non_constant_identifier_names
  final int _MOST_FAVORITE_LIMIT = 5;

  List<SeasonalAnime> seasonalAnime = [];
  List<TopAnime> topAnime = [];
  List<TopCharacter> topCharacters = [];
  List<FullAnime> mostFavoriteAnime = [];

  List<String> errors = [];

  DashboardBloc({
    required ADashboardRepository dashboardRepository,
  })  : _dashboardRepository = dashboardRepository,
        super(DashboardState.initial()) {
    on<BaseDashboardEvent>(_handleBaseEvent);
  }

  Future<void> _fetchData() async {
    final seasonalAnimeResult =
        await _dashboardRepository.getSeasonalAnime(limit: _LIMIT);
    final topAnimeResult =
        await _dashboardRepository.getTopAnime(limit: _LIMIT);
    final topCharactersResult =
        await _dashboardRepository.getTopCharacters(limit: _LIMIT);

    final mostFavoriteResult = await _dashboardRepository.getMostFavoriteAnime(
      limit: _MOST_FAVORITE_LIMIT,
    );

    seasonalAnimeResult.fold(
      (error) => errors.add(error.message),
      (result) {
        seasonalAnime = result;
      },
    );
    topAnimeResult.fold(
      (error) => errors.add(error.message),
      (result) => topAnime = result,
    );
    topCharactersResult.fold(
      (error) => errors.add(error.message),
      (result) => topCharacters = result,
    );
    mostFavoriteResult.fold(
      (error) => errors.add(error.message),
      (result) => mostFavoriteAnime = result,
    );
  }

  FutureOr<void> _handleBaseEvent(
    BaseDashboardEvent event,
    Emitter<DashboardState> emit,
  ) async {
    if (event.baseEvent is LoadPage) {
      emit(DashboardState.loading());
      await _handleLoadPage(event.baseEvent as LoadPage, emit);
    }

    if (event.baseEvent is RefreshPage) {
      await _handleRefreshPage(event.baseEvent as RefreshPage, emit);
    }
  }

  Future<void> _handleLoadPage(
    LoadPage event,
    Emitter<DashboardState> emit,
  ) async {
    await _fetchData();
    if (errors.isNotEmpty) {
      emit(DashboardState.error(errors.join('\n')));
    }

    emit(
      DashboardState.success(
        DashboardData(
          seasonalAnime: seasonalAnime,
          topAnime: topAnime,
          topCharacter: topCharacters,
          mostFavoriteAnime: mostFavoriteAnime,
        ),
      ),
    );
  }

  FutureOr<void> _handleRefreshPage(
    RefreshPage baseEvent,
    Emitter<DashboardState> emit,
  ) async {
    await _fetchData();
    if (errors.isNotEmpty) {
      emit(DashboardState.error(errors.join('\n')));
    }

    final refreshedData = DashboardData(
      seasonalAnime: seasonalAnime,
      topAnime: topAnime,
      topCharacter: topCharacters,
      mostFavoriteAnime: mostFavoriteAnime,
    );

    if (state is LoadPage) {
      final currentState = state as Success<DashboardData>;
      emit(
        currentState.copyWith(
          data: refreshedData,
        ),
      );
    }
  }
}
