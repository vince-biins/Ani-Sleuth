import 'package:ani_sleuth/domain/model/anime/entity/anime.dart';

class TopAnime extends Anime {
  final List<String> sGenres;
  final String? synopsis;
  final String? background;
  const TopAnime({
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
    required this.sGenres,
    required this.background,
    required this.synopsis,
  });

  @override
  bool? get stringify => true;
}
