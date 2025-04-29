import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/model/common/genre.dart';
import 'package:dartz/dartz.dart';

abstract class GenreRepository {
  Future<Either<AFailure, List<Genre>>> getAnimeGenre();
  Future<Either<AFailure, List<Genre>>> getMangaGenre();
}
