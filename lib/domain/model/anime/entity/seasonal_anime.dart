import 'package:ani_sleuth/domain/model/anime/entity/anime.dart';

class SeasonalAnime extends Anime {
  const SeasonalAnime({
    required super.malId,
    required super.url,
    required super.imageUrl,
    required super.title,
    required super.type,
    required super.status,
    required super.popularity,
    required super.rank,
    required super.score,
    required super.scoredBy,
    required super.episodes,
    required super.genres,
  });
}
