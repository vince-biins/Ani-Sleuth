import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:ani_sleuth/domain/model/character/entity/anime_character.dart';
import 'package:ani_sleuth/domain/model/character/entity/character.dart';
import 'package:ani_sleuth/domain/model/character/entity/manga_character.dart';
import 'package:ani_sleuth/domain/model/character/entity/top_character.dart';
import 'package:dartz/dartz.dart';

abstract class CharacterRepository {
  Future<Either<AFailure, List<TopCharacter>>> getListOfTopCharacters({
    required int limit,
  });
  Future<Either<AFailure, List<Character>>> getCharacterFullById({
    required int id,
  });

  Future<Either<AFailure, List<AnimeCharacter>>> getCharacterInAnime({
    required int id,
  });

  Future<Either<AFailure, List<MangaCharacter>>> getCharacterInManga({
    required int id,
  });
}
