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

  @override
  bool? get stringify => true;
  @override
  List<Object?> get props => [
        ...super.props,
        malId,
        url,
        imageUrl,
        title,
        type,
        status,
        popularity,
        rank,
        score,
        scoredBy,
        episodes,
        genres
      ];
}
