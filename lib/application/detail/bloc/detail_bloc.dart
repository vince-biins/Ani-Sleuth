import 'package:ani_sleuth/domain/model/anime/entity/episode.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/model/anime/entity/full_anime.dart';
import '../../../domain/repository/a_detail_repository.dart';
import '../../base/base_state.dart';

part 'detail_event.dart';
part 'detail_data.dart';
part 'detail_bloc.freezed.dart';

typedef DetailState = BaseState<DetailData>;

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final ADetailRepository _repository;
  final int _paramId;

  DetailBloc({required int paramId, required ADetailRepository repository})
      : _repository = repository,
        _paramId = paramId,
        super(DetailState.initial()) {
    on<LoadedDetailPage>(_handleLoadPage);
  }

  Future<void> _handleLoadPage(
    LoadedDetailPage event,
    Emitter<DetailState> emit,
  ) async {
    emit(DetailState.loading());
    final result = await Future.wait([
      _repository.getFullAnimeDetail(_paramId),
      _repository.getAnimeEpisodes(_paramId)
    ]);

    FullAnime? anime;
    List<Episode> episodes = [];
    result[0].fold(
      (error) => emit(DetailState.error(error.message)),
      (success) => anime = success as FullAnime,
    );
    result[1].fold(
      (error) => emit(DetailState.error(error.message)),
      (success) => episodes = success as List<Episode>,
    );

    emit(
      DetailState.success(
        DetailData(anime: anime, episides: episodes.reversed.toList()),
      ),
    );
  }
}
