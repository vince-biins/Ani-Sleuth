import 'package:ani_sleuth/application/api_util/api_success.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/character/anime_character_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/character/character_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/character/manga_character_dto.dart';
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
  Future<ApiSuccess<CharacterDto>> fetchCharacterFullById({
    @Path('id') required int id,
  });

  @GET('v4/anime/{id}/characters')
  Future<ApiSuccess<List<AnimeCharacterDto>>> fetchCharacterInAnime({
    @Path('id') required int id,
  });

  @GET('v4/manga/{id}/characters')
  Future<ApiSuccess<List<MangaCharacterDto>>> fetchCharacterInManga({
    @Path('id') required int id,
  });
}
