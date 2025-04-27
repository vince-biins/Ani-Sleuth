import 'package:ani_sleuth/domain/model/anime/entity/top_anime.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/anime_dto.dart';

extension AnimeMapper on AnimeDto {
  TopAnime transform() {
    return TopAnime(
      malId: malId,
      url: url,
      imageUrl: images.jpg?.mediumImageUrl ?? images.webp?.mediumImageUrl,
      title: title,
      type: type,
      episodes: episodes.toString(),
      score: score.toString(),
      scoredBy: scoredBy,
      airingStatus: status,
      popularity: popularity,
      rank: '#$rank',
      genres: genres.map((e) => e.name).toList(),
    );
  }
}
