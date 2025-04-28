import 'package:ani_sleuth/domain/model/anime/entity/genre.dart';
import 'package:ani_sleuth/domain/model/anime/entity/top_anime.dart';
import 'package:ani_sleuth/domain/model/character/entity/top_character.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/anime_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/genre_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/character/character_dto.dart';

extension AnimeMapper on AnimeDto {
  TopAnime transform() {
    return TopAnime(
      malId: malId,
      url: url,
      imageUrl: images.jpg?.mediumImageUrl ?? images.webp?.mediumImageUrl,
      title: title,
      type: type,
      episodes: episodes.toString(),
      score: score,
      scoredBy: scoredBy,
      airingStatus: status,
      popularity: popularity,
      rank: rank != null ? '#$rank' : 'Unranked',
      genres: genres.map((e) => e.name).toList(),
    );
  }
}

extension CharacterMapper on CharacterDto {
  TopCharacter transform() {
    return TopCharacter(
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

extension GenreMapper on GenreDto {
  Genre transform() {
    return Genre(
      malId: malId,
      name: name,
      url: url,
      count: count,
    );
  }
}
