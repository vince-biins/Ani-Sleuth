import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/model/anime/entity/episode.dart';
import 'package:ani_sleuth/domain/model/anime/entity/full_anime.dart';
import 'package:ani_sleuth/domain/model/anime/entity/seasonal_anime.dart';
import 'package:ani_sleuth/domain/model/anime/entity/top_anime.dart';
import 'package:dartz/dartz.dart';

abstract class AnimeRepository {
  Future<Either<AFailure, List<TopAnime>>> getListOfTopAnimes({
    required int limit,
  });
  Future<Either<AFailure, FullAnime?>> getAnimeFullById({
    required int id,
  });

  Future<Either<AFailure, List<String>>> getAnimeReviews({
    required int id,
  });

  Future<Either<AFailure, List<SeasonalAnime>>> getSeasonNowAnime({
    required int limit,
  });

  Future<Either<AFailure, List<FullAnime>>> getListOfMostFavoriteAnime({
    required int limit,
  });

  Future<Either<AFailure, List<Episode>>> getListOfEpisodesById({
    required int id,
  });
}
