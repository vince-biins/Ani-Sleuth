import 'package:ani_sleuth/application/api_util/api_success.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/genre_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'genre_service.g.dart';

@RestApi()
abstract class GenreService {
  factory GenreService(Dio dio, {String baseUrl}) = _GenreService;

  @GET('v4/genres/anime')
  Future<ApiSuccess<List<GenreDto>>> fetchAnimeGenre();

  @GET('v4/genres/manga')
  Future<ApiSuccess<List<GenreDto>>> fetchMangaGenre();
}
