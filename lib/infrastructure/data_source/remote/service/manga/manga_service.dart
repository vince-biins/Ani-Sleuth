import 'package:ani_sleuth/application/api_util/api_success.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/common/review_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/manga/manga_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'manga_service.g.dart';

@RestApi()
abstract class MangaService {
  factory MangaService(Dio dio, {String baseUrl}) = _MangaService;

  @GET('v4/top/manga')
  Future<ApiSuccess<List<MangaDto>>> fetchListOfTopManga({
    @Query('limit') int? limit,
  });

  @GET('v4/manga/{id}/full')
  Future<ApiSuccess<List<MangaDto>>> fetchMangaFullById({
    @Path('id') required int id,
  });

  @GET('v4/manga/{id}/reviews')
  Future<ApiSuccess<List<ReviewDto>>> fetchMangaReviews({
    @Path('id') required int id,
  });
}
