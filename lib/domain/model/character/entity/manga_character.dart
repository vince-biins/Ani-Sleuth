import 'package:ani_sleuth/domain/model/character/entity/character.dart';

class MangaCharacter extends Character {
  final String role;

  const MangaCharacter({
    required super.malId,
    required super.url,
    required super.images,
    required super.name,
    required super.nameKanji,
    required super.nicknames,
    required super.favorites,
    required super.about,
    required this.role,
  });

  @override
  List<Object?> get props => [
        ...super.props,
        role,
      ];
  @override
  bool? get stringify => true;
}
