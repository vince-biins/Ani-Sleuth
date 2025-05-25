import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/model/anime/entity/episode.dart';

import 'package:ani_sleuth/domain/model/anime/entity/full_anime.dart';
import 'package:ani_sleuth/domain/model/character/entity/anime_character.dart';
import 'package:ani_sleuth/domain/model/common/recommendation.dart';
import 'package:ani_sleuth/domain/repository/anime_repository.dart';
import 'package:ani_sleuth/domain/repository/character_repository.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repository/a_detail_repository.dart';

class ADetailRepositoryImpl implements ADetailRepository {
  final AnimeRepository _animeRepository;
  final CharacterRepository _characterRepository;
  const ADetailRepositoryImpl({
    required AnimeRepository animeRepository,
    required CharacterRepository characterRepository,
  })  : _animeRepository = animeRepository,
        _characterRepository = characterRepository;

  @override
  Future<Either<AFailure, FullAnime?>> getFullAnimeDetail(int id) async =>
      await _animeRepository.getAnimeFullById(id: id);

  @override
  Future<Either<AFailure, List<Episode>>> getAnimeEpisodes(int id) async =>
      await _animeRepository.getListOfEpisodesById(id: id);

  @override
  Future<Either<AFailure, List<Recommendation>>> getAnimeRecommendationById(
          int id) async =>
      await _animeRepository.getAnimeRecommendationById(id: id);

  @override
  Future<Either<AFailure, List<AnimeCharacter>>> getAnimeCharactersById(
          int id) async =>
      await _characterRepository.getCharacterInAnime(id: id);
}
