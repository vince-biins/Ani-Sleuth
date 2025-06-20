import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/mapper/anime_mapper.dart';
import 'package:ani_sleuth/domain/model/anime/entity/episode.dart';
import 'package:ani_sleuth/domain/model/anime/entity/full_anime.dart';
import 'package:ani_sleuth/domain/model/anime/entity/seasonal_anime.dart';
import 'package:ani_sleuth/domain/model/anime/entity/top_anime.dart';
import 'package:ani_sleuth/domain/model/common/recommendation.dart';
import 'package:ani_sleuth/domain/repository/anime_repository.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/service/anime/anime_service.dart';
import 'package:dartz/dartz.dart';

class AnimeRepositoryImpl implements AnimeRepository {
  final AnimeService _animeService;
  AnimeRepositoryImpl({required AnimeService animeService})
      : _animeService = animeService;

  @override
  Future<Either<AFailure, FullAnime?>> getAnimeFullById({
    required int id,
  }) {
    return _animeService
        .fetchAnimeFullById(id: id)
        .then<Either<AFailure, FullAnime?>>((value) {
      return Right(value.data?.transformFull());
    }).catchError((e) {
      return Left<AFailure, FullAnime?>(
        AFailure.fromDioException(e),
      );
    });
  }

  @override
  Future<Either<AFailure, List<String>>> getAnimeReviews({required int id}) {
    return _animeService
        .fetchAnimeReviews(id: id)
        .then<Either<AFailure, List<String>>>((value) {
      return Right(value.data?.map((e) => e.review).toList() ?? []);
    }).catchError((e) {
      return Left<AFailure, List<String>>(
        AFailure.fromDioException(e),
      );
    });
  }

  @override
  Future<Either<AFailure, List<TopAnime>>> getListOfTopAnimes({
    required int limit,
  }) {
    return _animeService
        .fetchListOfTopAnime(limit: limit)
        .then<Either<AFailure, List<TopAnime>>>((value) {
      value.data?.sort(
        (a, b) => (a.rank ?? 0).compareTo(b.rank ?? 0),
      );
      return Right(
        value.data?.map((e) => e.transform()).toList() ?? [],
      );
    }).catchError((e) {
      return Left<AFailure, List<TopAnime>>(
        AFailure.fromDioException(e),
      );
    });
  }

  @override
  Future<Either<AFailure, List<SeasonalAnime>>> getSeasonNowAnime({
    required int limit,
  }) {
    return _animeService
        .fetchSeasonNowAnime(limit: limit)
        .then<Either<AFailure, List<SeasonalAnime>>>((value) {
      return Right(
        value.data?.map((e) => e.transformSeasonal()).toList() ?? [],
      );
    }).catchError((e) {
      return Left<AFailure, List<SeasonalAnime>>(
        AFailure.fromDioException(e),
      );
    });
  }

  @override
  Future<Either<AFailure, List<FullAnime>>> getListOfMostFavoriteAnime({
    required int limit,
  }) {
    return _animeService
        .fetchListOfMostFavoriteAnime(limit: limit)
        .then<Either<AFailure, List<FullAnime>>>((value) {
      return Right(
        value.data?.asMap().entries.map(
              (entry) {
                int index = entry.key;
                final mapValue = entry.value;

                return mapValue.transformFull(index: index + 1);
              },
            ).toList() ??
            [],
      );
    }).catchError((e, stacktrace) {
      return Left<AFailure, List<FullAnime>>(
        AFailure.fromDioException(e),
      );
    });
  }

  @override
  Future<Either<AFailure, List<Episode>>> getListOfEpisodesById({
    required int id,
  }) {
    return _animeService
        .fetchAnimeEpisodeById(id: id)
        .then<Either<AFailure, List<Episode>>>(
          (value) =>
              Right(value.data?.map((ep) => ep.transform()).toList() ?? []),
        )
        .catchError(
          (e) => Left<AFailure, List<Episode>>(
            AFailure.fromDioException(e),
          ),
        );
  }

  @override
  Future<Either<AFailure, List<Recommendation>>> getAnimeRecommendationById({
    required int id,
  }) {
    return _animeService
        .fetchAnimeRecommendationById(id: id)
        .then<Either<AFailure, List<Recommendation>>>(
          (value) => Right(
            value.data?.take(10).map((reco) => reco.transform()).toList() ?? [],
          ),
        )
        .catchError(
          (e) => Left<AFailure, List<Recommendation>>(
            AFailure.fromDioException(e),
          ),
        );
  }
}
