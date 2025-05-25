import 'package:ani_sleuth/domain/model/character/entity/anime_character.dart';

class CharacterParam {
  final List<AnimeCharacter> mainCharacters;
  final List<AnimeCharacter> supportingCharacters;
  final List<AnimeCharacter> otherCharacters;

  const CharacterParam({
    this.mainCharacters = const [],
    this.supportingCharacters = const [],
    this.otherCharacters = const [],
  });
}
