import 'package:ani_sleuth/domain/model/manga/manga.dart';

class TopManga extends Manga {
  const TopManga({
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
    required super.score,
    required super.scoredBy,
  });

  @override
  bool get stringify => true;
}
