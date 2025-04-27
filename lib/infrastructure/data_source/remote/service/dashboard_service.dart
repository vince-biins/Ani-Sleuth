import 'package:ani_sleuth/application/api_util/api_success.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/anime_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'dashboard_service.g.dart';

@RestApi()
abstract class DashboardService {
  factory DashboardService(Dio dio, {String baseUrl}) = _DashboardService;

  @GET('/v4/top/anime')
  Future<ApiSuccess<List<AnimeDto>>> getTopAnime({
    @Query('limit') int? limit,
  });

  @GET('/v4/top/characters')
  Future<ApiSuccess<List<AnimeDto>>> getTopCharacters({
    @Query('limit') int? limit,
  });

  @GET('/v4/genres/anime')
  Future<ApiSuccess<List<AnimeDto>>> getAllGenre({
    @Query('limit') int? limit,
  });

  @GET('/v4/seasons/now')
  Future<ApiSuccess<List<AnimeDto>>> getAllSeasonalAnime({
    @Query('limit') int? limit,
  });
}
