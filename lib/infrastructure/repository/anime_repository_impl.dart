import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/model/anime/entity/anime.dart';
import 'package:ani_sleuth/domain/model/anime/entity/top_anime.dart';
import 'package:ani_sleuth/domain/repository/anime_repository.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/service/anime/anime_service.dart';
import 'package:dartz/dartz.dart';

class AnimeRepositoryImpl implements AnimeRepository {
  final AnimeService _animeService;
  AnimeRepositoryImpl({required AnimeService animeService})
      : _animeService = animeService;

  @override
  Future<Either<AFailure, List<Anime>>> getAnimeFullById({required int id}) {
    // TODO: implement getAnimeFullById
    throw UnimplementedError();
  }

  @override
  Future<Either<AFailure, List<String>>> getAnimeReviews({required int id}) {
    // TODO: implement getAnimeReviews
    throw UnimplementedError();
  }

  @override
  Future<Either<AFailure, List<TopAnime>>> getListOfTopAnimes(
      {required int limit}) {
    // TODO: implement getListOfTopAnimes
    throw UnimplementedError();
  }

  @override
  Future<Either<AFailure, List<TopAnime>>> getSeasonNowAnime(
      {required int limit}) {
    // TODO: implement getSeasonNowAnime
    throw UnimplementedError();
  }
}
