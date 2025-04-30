import 'dart:async';

import 'package:ani_sleuth/application/base/base_event.dart';
import 'package:ani_sleuth/application/base/base_state.dart';
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
  DashboardBloc({
    required ADashboardRepository dashboardRepository,
  })  : _dashboardRepository = dashboardRepository,
        super(DashboardState.initial()) {
    on<BaseDashboardEvent>(_handleBaseEvent);
    on<ClickedAnimeItem>(_handleClickedAnimeItem);
    on<ClickedCharacterItem>(_handleClickedCharacterItem);
  }

  FutureOr<void> _handleBaseEvent(
    BaseDashboardEvent event,
    Emitter<DashboardState> emit,
  ) async {
    emit(DashboardState.loading());
    if (event.baseEvent is LoadPage) {
      await _handleLoadPage(event.baseEvent as LoadPage, emit);
    }
  }

  Future<void> _handleLoadPage(
    LoadPage event,
    Emitter<DashboardState> emit,
  ) async {
    final seasonalAnimeResult =
        await _dashboardRepository.getSeasonalAnime(limit: _LIMIT);
    final topAnimeResult =
        await _dashboardRepository.getTopAnime(limit: _LIMIT);
    final topCharactersResult =
        await _dashboardRepository.getTopCharacters(limit: _LIMIT);

    seasonalAnimeResult.fold(
      (failure) => emit(DashboardState.error(failure.message)),
      (seasonalAnime) {
        topAnimeResult.fold(
          (failure) => emit(DashboardState.error(failure.message)),
          (topAnime) {
            topCharactersResult.fold(
              (failure) => emit(DashboardState.error(failure.message)),
              (topCharacters) {
                if (seasonalAnime.isEmpty &&
                    topAnime.isEmpty &&
                    topCharacters.isEmpty) {
                  emit(const DashboardState.error('No data found'));
                } else {
                  emit(
                    DashboardState.loaded(
                      DashboardData(
                        seasonalAnime: seasonalAnime,
                        topAnime: topAnime,
                        topCharacter: topCharacters,
                      ),
                    ),
                  );
                }
              },
            );
          },
        );
      },
    );
  }

  FutureOr<void> _handleClickedAnimeItem(
    ClickedAnimeItem event,
    Emitter<DashboardState> emit,
  ) {}

  FutureOr<void> _handleClickedCharacterItem(
    ClickedCharacterItem event,
    Emitter<DashboardState> emit,
  ) {}
}
