import 'package:ani_sleuth/domain/model/character/entity/anime_character.dart';
import 'package:ani_sleuth/domain/model/character/entity/character.dart';
import 'package:ani_sleuth/domain/model/character/entity/manga_character.dart';
import 'package:ani_sleuth/domain/model/character/entity/top_character.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/character/anime_character_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/character/character_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/character/manga_character_dto.dart';

extension CharacterMapper on CharacterDto {
  TopCharacter transform(int index) {
    return TopCharacter(
        malId: malId,
        url: url,
        images: images?.jpg?.imageUrl ?? images?.webp?.imageUrl,
        name: name,
        nameKanji: nameKanji,
        nicknames: nicknames ?? [],
        favorites: favorites,
        about: about,
        rank: '#$index');
  }

  Character transformFull() {
    return Character(
      malId: malId,
      url: url,
      images: images?.jpg?.imageUrl ?? images?.webp?.imageUrl,
      name: name,
      nameKanji: nameKanji,
      nicknames: nicknames ?? [],
      favorites: favorites,
      about: about,
    );
  }
}

extension AnimeCharacterMapper on AnimeCharacterDto {
  AnimeCharacter transform() {
    return AnimeCharacter(
      malId: character.malId,
      url: character.url,
      images:
          character.images?.jpg?.imageUrl ?? character.images?.webp?.imageUrl,
      name: character.name,
      nameKanji: character.nameKanji,
      nicknames: character.nicknames,
      favorites: character.favorites,
      about: character.about,
      role: role,
      aFavorites: favorites,
    );
  }
}

extension MangaCharacterMapper on MangaCharacterDto {
  MangaCharacter transform() {
    return MangaCharacter(
      malId: character.malId,
      url: character.url,
      images:
          character.images?.jpg?.imageUrl ?? character.images?.webp?.imageUrl,
      name: character.name,
      nameKanji: character.nameKanji,
      nicknames: character.nicknames,
      favorites: character.favorites,
      about: character.about,
      role: role,
    );
  }
}
