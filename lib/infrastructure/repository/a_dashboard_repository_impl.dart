import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/model/anime/entity/seasonal_anime.dart';
import 'package:ani_sleuth/domain/model/common/genre.dart';
import 'package:ani_sleuth/domain/model/anime/entity/top_anime.dart';
import 'package:ani_sleuth/domain/model/character/entity/top_character.dart';
import 'package:ani_sleuth/domain/repository/a_dashboard_repository.dart';
import 'package:ani_sleuth/domain/repository/anime_repository.dart';
import 'package:ani_sleuth/domain/repository/character_repository.dart';
import 'package:ani_sleuth/domain/repository/genre_repository.dart';
import 'package:dartz/dartz.dart';

class ADashboardRepositoryImpl implements ADashboardRepository {
  final AnimeRepository _animeRepository;
  final CharacterRepository _characterRepository;
  final GenreRepository _genreRepository;
  final _maxTopAnimeLimit = 25;
  final _maxTopSeasonalAnimeLimit = 25;
  final _maxTopCharacterLimit = 25;

  ADashboardRepositoryImpl({
    required GenreRepository genreRepository,
    required AnimeRepository animeRepository,
    required CharacterRepository characterRepository,
  })  : _animeRepository = animeRepository,
        _characterRepository = characterRepository,
        _genreRepository = genreRepository;

  @override
  Future<Either<AFailure, List<Genre>>> getAnimeGenre() async {
    return await _genreRepository.getAnimeGenre();
  }

  @override
  Future<Either<AFailure, List<SeasonalAnime>>> getSeasonalAnime({
    required int limit,
  }) async {
    return await _animeRepository.getSeasonNowAnime(
      limit: _checkMaxLimit(limit, _maxTopSeasonalAnimeLimit),
    );
  }

  @override
  Future<Either<AFailure, List<TopAnime>>> getTopAnime({
    required int limit,
  }) async {
    return await _animeRepository.getListOfTopAnimes(
      limit: _checkMaxLimit(limit, _maxTopAnimeLimit),
    );
  }

  @override
  Future<Either<AFailure, List<TopCharacter>>> getTopCharacters({
    required int limit,
  }) async {
    return await _characterRepository.getListOfTopCharacters(
      limit: _checkMaxLimit(limit, _maxTopCharacterLimit),
    );
  }

  int _checkMaxLimit(int limit, int maxLimit) =>
      limit > maxLimit ? maxLimit : limit;
}
