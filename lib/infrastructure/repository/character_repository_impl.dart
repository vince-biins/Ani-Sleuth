import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/model/character/entity/anime_character.dart';
import 'package:ani_sleuth/domain/model/character/entity/character.dart';
import 'package:ani_sleuth/domain/model/character/entity/manga_character.dart';
import 'package:ani_sleuth/domain/model/character/entity/top_character.dart';
import 'package:ani_sleuth/domain/repository/character_repository.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/service/character/character_service.dart';
import 'package:dartz/dartz.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final CharacterService _characterService;
  CharacterRepositoryImpl({required CharacterService characterService})
      : _characterService = characterService;
  @override
  Future<Either<AFailure, List<Character>>> getCharacterFullById(
      {required int id}) {
    // TODO: implement getCharacterFullById
    throw UnimplementedError();
  }

  @override
  Future<Either<AFailure, List<AnimeCharacter>>> getCharacterInAnime(
      {required int id}) {
    // TODO: implement getCharacterInAnime
    throw UnimplementedError();
  }

  @override
  Future<Either<AFailure, List<MangaCharacter>>> getCharacterInManga(
      {required int id}) {
    // TODO: implement getCharacterInManga
    throw UnimplementedError();
  }

  @override
  Future<Either<AFailure, List<TopCharacter>>> getListOfTopCharacters(
      {required int limit}) {
    // TODO: implement getListOfTopCharacters
    throw UnimplementedError();
  }
}
