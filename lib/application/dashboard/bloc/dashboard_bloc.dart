import 'dart:async';
import 'package:ani_sleuth/application/api_util/a_failure.dart';
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

  List<FullAnime> mostFavoriteAnime = [];

  List<String> errors = [];

  DashboardBloc({
    required ADashboardRepository dashboardRepository,
  })  : _dashboardRepository = dashboardRepository,
        super(DashboardState.initial()) {
    on<LoadDashboardPage>(_handleLoadPage);
  }

  Future<void> _fetchInitialData(
    LoadDashboardPage event,
    Emitter<DashboardState> emit,
  ) async {
    final results = await Future.wait([
      _dashboardRepository.getSeasonalAnime(limit: _LIMIT),
      _dashboardRepository.getTopAnime(limit: _LIMIT),
      _dashboardRepository.getMostFavoriteAnime(limit: _MOST_FAVORITE_LIMIT),
    ]);
    results[0].fold(
      (error) => errors.add(error.message),
      (result) => seasonalAnime = result as List<SeasonalAnime>,
    );
    results[1].fold(
      (error) => errors.add(error.message),
      (result) => topAnime = result as List<TopAnime>,
    );

    results[2].fold(
      (error) => errors.add(error.message),
      (result) => mostFavoriteAnime = result as List<FullAnime>,
    );

    await Future.delayed(Duration(milliseconds: 100));
    final characterResult =
        await _dashboardRepository.getTopCharacters(limit: _LIMIT);
    if (characterResult.isLeft()) {
      errors.add(
        characterResult
            .swap()
            .getOrElse(() => AFailure(message: 'Uknown'))
            .message,
      );
    }
    final topCharacters = characterResult.getOrElse(() => []);
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

  FutureOr<void> _handleLoadPage(
    LoadDashboardPage event,
    Emitter<DashboardState> emit,
  ) async {
    await _fetchInitialData(event, emit);
    // switch (event.batch) {
    //   case ApiBatch.first:
    //     await _fetchInitialData(event, emit);
    //   case ApiBatch.second:
    //     await _handle2ndBatchRequest(event, emit);
    // }
  }

  ///
  /// [_handle2ndBatchRequest] it handles 2nd batch of api calls
  /// since Jikan Api has Rate limit of 3 request per seconds
  ///
  FutureOr<void> _handle2ndBatchRequest(
    LoadDashboardPage event,
    Emitter<DashboardState> emit,
  ) async {
    final result = await _dashboardRepository.getTopCharacters(limit: _LIMIT);

    result.fold(
      (error) => errors.add(error.message),
      (result) {
        final currState = state as Success<DashboardData>;

        final res = currState.data.copyWith(topCharacter: result);
        emit(currState.copyWith(data: res));
      },
    );
  }
}
