import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/mapper/manga_mapper.dart';
import 'package:ani_sleuth/domain/model/manga/full_manga.dart';
import 'package:ani_sleuth/domain/model/manga/top_manga.dart';
import 'package:ani_sleuth/domain/repository/manga_repository.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/service/manga/manga_service.dart';
import 'package:dartz/dartz.dart';

class MangaRepositoryImpl implements MangaRepository {
  final MangaService _mangaService;
  MangaRepositoryImpl({required MangaService mangaService})
      : _mangaService = mangaService;
  @override
  Future<Either<AFailure, List<TopManga>>> getListOfTopManga({
    required int limit,
  }) {
    return _mangaService
        .fetchListOfTopManga(limit: limit)
        .then<Either<AFailure, List<TopManga>>>((value) {
      return Right(value.data?.map((e) => e.transform()).toList() ?? []);
    }).catchError((e) {
      return Left<AFailure, List<TopManga>>(
        AFailure.fromDioException(e),
      );
    });
  }

  @override
  Future<Either<AFailure, FullManga?>> getMangaFullById({
    required int id,
  }) {
    return _mangaService
        .fetchMangaFullById(id: id)
        .then<Either<AFailure, FullManga?>>((value) {
      return Right(value.data?.transformFull());
    }).catchError((e) {
      return Left<AFailure, FullManga?>(
        AFailure.fromDioException(e),
      );
    });
  }

  @override
  Future<Either<AFailure, List<String>>> getMangaReview({required int id}) {
    return _mangaService
        .fetchMangaReviews(id: id)
        .then<Either<AFailure, List<String>>>((value) {
      return Right(value.data?.map((e) => e.review).toList() ?? []);
    }).catchError((e) {
      return Left<AFailure, List<String>>(
        AFailure.fromDioException(e),
      );
    });
  }
}
