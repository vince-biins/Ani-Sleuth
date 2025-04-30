import 'package:ani_sleuth/domain/mapper/anime_mapper.dart';
import 'package:ani_sleuth/domain/model/manga/full_manga.dart';
import 'package:ani_sleuth/domain/model/manga/top_manga.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/manga/manga_dto.dart';

extension MangaMapper on MangaDto {
  TopManga transform() {
    return TopManga(
      malId: malId,
      url: url,
      imageUrl: images.jpg?.mediumImageUrl ?? images.webp?.mediumImageUrl,
      title: title,
      type: type,
      score: score,
      scoredBy: scoredBy,
      status: status,
      popularity: popularity,
      rank: rank != null ? '#$rank' : 'Unranked',
      chapters: chapters,
      volumes: volumes,
    );
  }

  FullManga transformFull() {
    return FullManga(
      malId: malId,
      url: url,
      imageUrl: images.jpg?.largeImageUrl ?? images.webp?.largeImageUrl,
      title: title,
      type: type,
      score: score,
      scoredBy: scoredBy,
      status: status,
      popularity: popularity,
      rank: rank != null ? '#$rank' : 'Unranked',
      genres: genres.map((e) => e.transform()).toList(),
      synopsis: synopsis,
      background: background ?? 'No background available',
      rating: rating,
      chapters: chapters,
      volumes: volumes,
      isPublishing: isPublishing,
      published: published.transform(),
      favorites: favorites,
      authors: authors.map((e) => e.transform()).toList(),
      serializations: serializations.map((e) => e.transform()).toList(),
    );
  }
}
