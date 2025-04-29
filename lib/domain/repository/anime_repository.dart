import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/model/anime/entity/anime.dart';
import 'package:ani_sleuth/domain/model/anime/entity/top_anime.dart';
import 'package:dartz/dartz.dart';

abstract class AnimeRepository {
  Future<Either<AFailure, List<TopAnime>>> getListOfTopAnimes({
    required int limit,
  });
  Future<Either<AFailure, List<Anime>>> getAnimeFullById({
    required int id,
  });

  Future<Either<AFailure, List<String>>> getAnimeReviews({
    required int id,
  });

  Future<Either<AFailure, List<TopAnime>>> getSeasonNowAnime({
    required int limit,
  });
}
