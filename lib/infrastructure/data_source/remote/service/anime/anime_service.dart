import 'package:ani_sleuth/application/api_util/api_success.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/anime_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/common/review_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'anime_service.g.dart';

@RestApi()
abstract class AnimeService {
  factory AnimeService(Dio dio, {String baseUrl}) = _AnimeService;

  @GET('/v4/top/anime')
  Future<ApiSuccess<List<AnimeDto>>> fetchListOfTopAnime({
    @Query('limit') int? limit,
  });

  @GET('/v4/genres/anime')
  Future<ApiSuccess<List<AnimeDto>>> fetchAnimeFullById({
    @Query('id') required int id,
  });

  @GET('/v4/seasons/now')
  Future<ApiSuccess<List<AnimeDto>>> fetchSeasonNowAnime({
    @Query('limit') int? limit,
  });

  @GET('v4/anime/{id}/reviews')
  Future<ApiSuccess<List<ReviewDto>>> fetchAnimeReviews({
    @Path('id') required int id,
  });
}
