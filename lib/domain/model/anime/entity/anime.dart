import 'package:ani_sleuth/domain/model/common/genre.dart';
import 'package:ani_sleuth/domain/model/common/media.dart';

class Anime extends Media {
  final String episodes;
  final List<Genre> genres;
  const Anime({
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
    required this.episodes,
    required this.genres,
  });

  @override
  bool? get stringify => true;
}
