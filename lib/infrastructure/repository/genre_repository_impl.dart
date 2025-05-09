import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/mapper/anime_mapper.dart';
import 'package:ani_sleuth/domain/model/common/genre.dart';
import 'package:ani_sleuth/domain/repository/genre_repository.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/service/genre/genre_service.dart';
import 'package:dartz/dartz.dart';

class GenreRepositoryImpl implements GenreRepository {
  final GenreService _genreService;
  GenreRepositoryImpl({required GenreService genreService})
      : _genreService = genreService;

  @override
  Future<Either<AFailure, List<Genre>>> getAnimeGenre() {
    return _genreService
        .fetchAnimeGenre()
        .then<Either<AFailure, List<Genre>>>((value) {
      return Right(value.data?.map((e) => e.transform()).toList() ?? []);
    }).catchError((e) {
      return Left<AFailure, List<Genre>>(
        AFailure.fromDioException(e),
      );
    });
  }

  @override
  Future<Either<AFailure, List<Genre>>> getMangaGenre() {
    return _genreService
        .fetchMangaGenre()
        .then<Either<AFailure, List<Genre>>>((value) {
      return Right(value.data?.map((e) => e.transform()).toList() ?? []);
    }).catchError((e) {
      return Left<AFailure, List<Genre>>(
        AFailure.fromDioException(e),
      );
    });
  }
}
