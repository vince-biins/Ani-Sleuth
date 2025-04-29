import 'package:ani_sleuth/application/api_util/api_success.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/genre_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'genre_service.g.dart';

@RestApi()
abstract class GenreService {
  factory GenreService(Dio dio, {String baseUrl}) = _GenreService;

  @GET('v4/top/manga')
  Future<ApiSuccess<List<GenreDto>>> fetchAnimeGenre({
    @Query('limit') int? limit,
  });

  @GET('v4/manga/{id}/full')
  Future<ApiSuccess<List<GenreDto>>> fetchMangaGenre();
}
