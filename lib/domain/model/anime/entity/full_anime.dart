import 'package:ani_sleuth/domain/model/anime/entity/anime.dart';
import 'package:ani_sleuth/domain/model/anime/entity/aservice.dart';
import 'package:ani_sleuth/domain/model/anime/valueobject/airing.dart';
import 'package:ani_sleuth/domain/model/anime/valueobject/external.dart';

class FullAnime extends Anime {
  final String? synopsis;
  final String? background;
  final Airing airing;
  final bool isAiring;
  final String duration;
  final String? rating;
  final List<AService> studios;
  final List<AService> licensors;
  final List<AService> producers;
  final List<External> external;
  final List<External> streaming;

  const FullAnime({
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
    required this.synopsis,
    required this.background,
    required this.airing,
    required this.isAiring,
    required this.studios,
    required this.licensors,
    required this.producers,
    required this.external,
    required this.streaming,
    required super.genres,
    required this.duration,
    required this.rating,
  });
}
