import 'package:ani_sleuth/domain/model/character/entity/character.dart';

class TopCharacter extends Character {
  final String rank;
  const TopCharacter({
    required this.rank,
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
