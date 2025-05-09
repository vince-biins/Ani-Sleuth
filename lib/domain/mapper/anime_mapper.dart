import 'package:ani_sleuth/domain/model/anime/entity/aservice.dart';
import 'package:ani_sleuth/domain/model/anime/entity/full_anime.dart';
import 'package:ani_sleuth/domain/model/anime/entity/seasonal_anime.dart';
import 'package:ani_sleuth/domain/model/anime/entity/trailer.dart';
import 'package:ani_sleuth/domain/model/anime/valueobject/airing.dart';
import 'package:ani_sleuth/domain/model/anime/valueobject/external.dart';
import 'package:ani_sleuth/domain/model/common/aimage.dart';
import 'package:ani_sleuth/domain/model/common/genre.dart';
import 'package:ani_sleuth/domain/model/anime/entity/top_anime.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/airing_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/anime_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/external_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/genre_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/service_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/trailer_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/common/image_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/common/image_format_dto.dart';

extension AnimeMapper on AnimeDto {
  TopAnime transform() {
    return TopAnime(
      malId: malId,
      url: url,
      imageUrl: images.jpg?.imageUrl ?? images.webp?.imageUrl,
      title: title,
      type: type,
      episodes: 'episodes.toString()',
      score: score,
      scoredBy: scoredBy,
      status: status,
      popularity: popularity,
      rank: rank != null ? '#$rank' : 'Unranked',
      sGenres: genres.map((e) => e.name).toList(),
      genres: genres.map((e) => e.transform()).toList(),
      synopsis: synopsis,
      background: background,
    );
  }

  SeasonalAnime transformSeasonal() {
    return SeasonalAnime(
      malId: malId,
      url: url,
      imageUrl: images.jpg?.imageUrl ?? images.webp?.imageUrl,
      title: title,
      type: type,
      episodes: 'Ep', // ${episodes ?? "??"}',
      score: score,
      scoredBy: scoredBy,
      status: status,
      popularity: popularity,
      rank: rank != null ? '#$rank' : 'Unranked',
      genres: genres.map((e) => e.transform()).toList(),
    );
  }

  FullAnime transformFull({int? index}) {
    return FullAnime(
        malId: malId,
        url: url,
        imageUrl: images.jpg?.largeImageUrl ?? images.webp?.largeImageUrl,
        title: title,
        type: type,
        episodes: 'episodes.toString()',
        score: score,
        scoredBy: scoredBy,
        status: status,
        popularity: popularity,
        rank: rank != null ? '#$rank' : 'Unranked',
        genres: genres.map((e) => e.transform()).toList(),
        synopsis: synopsis,
        background: background ?? 'No background available',
        studios: studios.map((e) => e.transform()).toList(),
        licensors: licensors.map((e) => e.transform()).toList(),
        producers: producers.map((e) => e.transform()).toList(),
        external: external?.map((e) => e.transform()).toList() ?? [],
        streaming: streaming?.map((e) => e.transform()).toList() ?? [],
        airing: aired.transform(),
        duration: duration,
        rating: rating,
        isAiring: isAiring,
        jTitle: titles.firstWhere((t) => t.type == 'Japanese').title,
        fullImage: images.transform(),
        favoriteRank: index != null ? '#$index' : 'Unranked',
        trailer: trailer?.transform());
  }
}

extension GenreMapper on GenreDto {
  Genre transform() {
    return Genre(
      malId: malId,
      name: name,
      url: url,
      type: type,
    );
  }
}

extension TrailerMapper on TrailerDto {
  Trailer transform() {
    return Trailer(
      youtubeId: youtubeId,
      url: url,
      embedUrl: embedUrl,
      images: images?.transform(),
    );
  }
}

extension ServiceMapper on ServiceDto {
  AService transform() {
    return AService(
      malId: malId,
      name: name,
      type: type,
    );
  }
}

extension ExternalMapper on ExternalDto {
  External transform() {
    return External(
      name: name.orEmpty(),
      url: url.orEmpty(),
    );
  }
}

extension AiringMapper on AiringDto {
  Airing transform() {
    return Airing(
      defaultDateString: string,
      formattedDateString: string, // To do format this
      date: (from: prop?.from.transform(), to: prop?.to.transform()),
    );
  }
}

extension DateMapper on DateDto {
  ADate transform() {
    return ADate(
      day: day,
      month: month,
      year: year,
    );
  }
}

extension ImageMapper on ImageDto {
  Aimage transform() {
    return Aimage(jpg: jpg?.transform(), webp: webp?.transform());
  }
}

extension ImageFormatMapper on ImageFormatDto {
  AimageFormat transform() {
    return AimageFormat(
      imageUrl: imageUrl,
      smallImageUrl: smallImageUrl,
      largeImageUrl: largeImageUrl,
      mediumImageUrl: mediumImageUrl,
      maximumImageUrl: maximumImageUrl,
    );
  }
}

extension on String? {
  String orEmpty() => this == null ? '' : this!;
}
