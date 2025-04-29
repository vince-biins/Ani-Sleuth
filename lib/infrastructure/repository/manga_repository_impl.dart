import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/model/manga/manga.dart';
import 'package:ani_sleuth/domain/model/manga/top_manga.dart';
import 'package:ani_sleuth/domain/repository/manga_repository.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/service/manga/manga_service.dart';
import 'package:dartz/dartz.dart';

class MangaRepositoryImpl implements MangaRepository {
  final MangaService _mangaService;
  MangaRepositoryImpl({required MangaService mangaService})
      : _mangaService = mangaService;
  @override
  Future<Either<AFailure, List<TopManga>>> getListOfTopManga(
      {required int limit}) {
    // TODO: implement getListOfTopManga
    throw UnimplementedError();
  }

  @override
  Future<Either<AFailure, List<Manga>>> getMangaFullById({required int id}) {
    // TODO: implement getMangaFullById
    throw UnimplementedError();
  }

  @override
  Future<Either<AFailure, List<String>>> getMangaReview({required int id}) {
    // TODO: implement getMangaReview
    throw UnimplementedError();
  }
}
