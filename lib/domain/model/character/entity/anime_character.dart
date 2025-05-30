import 'package:ani_sleuth/domain/model/character/entity/character.dart';
import 'package:ani_sleuth/domain/model/enum/character_role.dart';

class AnimeCharacter extends Character {
  final CharacterRole role;
  final int aFavorites;

  const AnimeCharacter({
    required super.malId,
    required super.url,
    required super.images,
    required super.name,
    required super.nameKanji,
    required super.nicknames,
    required super.favorites,
    required super.about,
    required this.role,
    required this.aFavorites,
  });

  @override
  List<Object?> get props => [
        ...super.props,
        role,
        aFavorites,
      ];
  @override
  bool? get stringify => true;
}
