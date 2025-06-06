import 'package:ani_sleuth/domain/model/anime/entity/episode.dart';
import 'package:ani_sleuth/domain/model/character/entity/anime_character.dart';
import 'package:ani_sleuth/domain/model/common/recommendation.dart';
import 'package:ani_sleuth/domain/model/enum/character_role.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/model/anime/entity/full_anime.dart';
import '../../../domain/repository/a_detail_repository.dart';
import '../../base/base_state.dart';
import 'character_param.dart';

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
      _repository.getAnimeEpisodes(_paramId),
      _repository.getAnimeRecommendationById(_paramId),
    ]);

    FullAnime? anime;
    List<Episode> episodes = [];
    List<Recommendation> recommendations = [];
    CharacterParam character = CharacterParam();
    result[0].fold(
      (error) => emit(DetailState.error(error.message)),
      (success) => anime = success as FullAnime,
    );
    result[1].fold(
      (error) => emit(DetailState.error(error.message)),
      (success) => episodes = success as List<Episode>,
    );

    result[2].fold(
      (error) => emit(DetailState.error(error.message)),
      (success) => recommendations = success as List<Recommendation>,
    );

    await Future.delayed(Duration(seconds: 1));
    final characterResult = await _repository.getAnimeCharactersById(_paramId);
    characterResult.fold(
      (error) => emit(DetailState.error(error.message)),
      (success) => character = _mapCharacterRole(success),
    );

    emit(
      DetailState.success(
        DetailData(
          anime: anime,
          episodes: episodes.reversed.toList(),
          recommendation: recommendations,
          character: character,
        ),
      ),
    );
  }

  CharacterParam _mapCharacterRole(List<AnimeCharacter> character) {
    final main = <AnimeCharacter>[];
    final supporting = <AnimeCharacter>[];
    final others = <AnimeCharacter>[];

    for (final c in character) {
      switch (c.role) {
        case CharacterRole.main:
          main.add(c);
          break;
        case CharacterRole.supporting:
          supporting.add(c);
          break;
        case CharacterRole.others:
          others.add(c);
          break;
      }
    }

    return CharacterParam(
      mainCharacters: main,
      supportingCharacters: supporting,
      otherCharacters: others,
    );
  }
}
