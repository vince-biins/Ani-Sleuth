import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/model/manga/full_manga.dart';
import 'package:ani_sleuth/domain/model/manga/top_manga.dart';
import 'package:dartz/dartz.dart';

abstract class MangaRepository {
  Future<Either<AFailure, List<TopManga>>> getListOfTopManga({
    required int limit,
  });
  Future<Either<AFailure, FullManga?>> getMangaFullById({
    required int id,
  });

  Future<Either<AFailure, List<String>>> getMangaReview({
    required int id,
  });
}
