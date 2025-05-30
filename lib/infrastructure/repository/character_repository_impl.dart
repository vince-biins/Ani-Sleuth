import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/mapper/character_mapper.dart';
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
  Future<Either<AFailure, Character?>> getCharacterFullById({
    required int id,
  }) {
    return _characterService
        .fetchCharacterFullById(id: id)
        .then<Either<AFailure, Character?>>((value) {
      return Right(value.data?.transformFull());
    }).catchError((e) {
      return Left<AFailure, Character?>(
        AFailure.fromDioException(e),
      );
    });
  }

  @override
  Future<Either<AFailure, List<AnimeCharacter>>> getCharacterInAnime({
    required int id,
  }) {
    return _characterService
        .fetchCharacterInAnime(id: id)
        .then<Either<AFailure, List<AnimeCharacter>>>((value) {
      return Right(value.data?.map((e) => e.transform()).toList() ?? []);
    }).catchError((e) {
      print(e);
      return Left<AFailure, List<AnimeCharacter>>(
        AFailure.fromDioException(e),
      );
    });
  }

  @override
  Future<Either<AFailure, List<MangaCharacter>>> getCharacterInManga({
    required int id,
  }) {
    return _characterService
        .fetchCharacterInManga(id: id)
        .then<Either<AFailure, List<MangaCharacter>>>((value) {
      return Right(value.data?.map((e) => e.transform()).toList() ?? []);
    }).catchError((e) {
      return Left<AFailure, List<MangaCharacter>>(
        AFailure.fromDioException(e),
      );
    });
  }

  @override
  Future<Either<AFailure, List<TopCharacter>>> getListOfTopCharacters({
    required int limit,
  }) {
    return _characterService
        .fetchListOfTopCharacters(limit: limit)
        .then<Either<AFailure, List<TopCharacter>>>((value) {
      return Right(
        value.data?.toList().asMap().entries.map((entry) {
              int index = entry.key;
              var mapValue = entry.value;

              return mapValue.transform(index + 1);
            }).toList() ??
            [],
      );
    }).catchError((e) {
      return Left<AFailure, List<TopCharacter>>(
        AFailure.fromDioException(e),
      );
    });
  }
}
