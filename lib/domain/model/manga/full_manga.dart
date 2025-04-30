import 'package:ani_sleuth/domain/model/anime/entity/aservice.dart';
import 'package:ani_sleuth/domain/model/anime/valueobject/airing.dart';
import 'package:ani_sleuth/domain/model/common/genre.dart';
import 'package:ani_sleuth/domain/model/manga/manga.dart';

class FullManga extends Manga {
  final String? synopsis;
  final String? background;
  final bool isPublishing;
  final Airing published;
  final int favorites;
  final String rating;
  final List<Genre> genres;
  final List<AService> authors;
  final List<AService> serializations;

  const FullManga({
    required super.malId,
    required super.url,
    required super.imageUrl,
    required super.title,
    required super.type,
    required super.chapters,
    required super.volumes,
    required super.status,
    required super.popularity,
    required super.rank,
    required this.synopsis,
    required this.background,
    required this.isPublishing,
    required this.published,
    required this.favorites,
    required this.rating,
    required this.genres,
    required this.authors,
    required this.serializations,
    required super.score,
    required super.scoredBy,
  });

  @override
  bool get stringify => true;
}
