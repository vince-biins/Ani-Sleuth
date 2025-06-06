import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/model/anime/entity/episode.dart';
import 'package:ani_sleuth/domain/model/anime/entity/full_anime.dart';
import 'package:ani_sleuth/domain/model/character/entity/anime_character.dart';
import 'package:dartz/dartz.dart';

import '../model/character/entity/character.dart';
import '../model/common/recommendation.dart';

abstract class ADetailRepository {
  Future<Either<AFailure, FullAnime?>> getFullAnimeDetail(int id);
  Future<Either<AFailure, List<Episode>>> getAnimeEpisodes(int id);
  Future<Either<AFailure, List<Recommendation>>> getAnimeRecommendationById(
    int id,
  );

  Future<Either<AFailure, List<AnimeCharacter>>> getAnimeCharactersById(int id);
  Future<Either<AFailure, Character?>> getAnimeCharacterFullById(int id);
}
