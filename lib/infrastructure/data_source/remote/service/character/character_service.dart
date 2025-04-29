import 'package:ani_sleuth/application/api_util/api_success.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/anime_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/character/character_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/common/review_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'character_service.g.dart';

@RestApi()
abstract class CharacterService {
  factory CharacterService(Dio dio, {String baseUrl}) = _CharacterService;

  @GET('/v4/top/characters')
  Future<ApiSuccess<List<CharacterDto>>> fetchListOfTopCharacters({
    @Query('limit') int? limit,
  });

  @GET('v4/characters/{id}/full')
  Future<ApiSuccess<List<CharacterDto>>> fetchCharacterFullById({
    @Path('id') required int id,
  });

  @GET('v4/anime/{id}/characters')
  Future<ApiSuccess<List<AnimeDto>>> fetchCharacterInAnime({
    @Path('id') required int id,
  });

  @GET('v4/manga/{id}/characters')
  Future<ApiSuccess<List<ReviewDto>>> fetchCharacterInManga({
    @Path('id') required int id,
  });
}
