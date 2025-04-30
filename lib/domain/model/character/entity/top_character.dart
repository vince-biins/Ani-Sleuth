import 'package:ani_sleuth/domain/model/character/entity/character.dart';

class TopCharacter extends Character {
  const TopCharacter({
    required super.malId,
    required super.url,
    required super.images,
    required super.name,
    required super.nameKanji,
    required super.nicknames,
    required super.favorites,
    required super.about,
  });
}
