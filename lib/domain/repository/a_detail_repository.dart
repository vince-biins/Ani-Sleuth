import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/model/anime/entity/full_anime.dart';
import 'package:dartz/dartz.dart';

abstract class ADetailRepository {
  Future<Either<AFailure, FullAnime?>> getFullAnimeDetail(int id);
}
