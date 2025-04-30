import 'package:ani_sleuth/domain/model/anime/entity/aservice.dart';
import 'package:ani_sleuth/domain/model/anime/enum/anime_type.dart';
import 'package:ani_sleuth/domain/model/anime/valueobject/airing.dart';
import 'package:ani_sleuth/domain/model/anime/valueobject/external.dart';
import 'package:ani_sleuth/domain/model/common/genre.dart';
import 'package:equatable/equatable.dart';

class Anime extends Equatable {
  final int malId;
  final String url;
  final String? image;
  final String title;
  final String? synopsis;
  final String background;
  final String duration;
  final String rating;
  final AnimeType type;
  final String episodes;
  final double? score;
  final int? scoredBy;
  final String airingStatus;
  final bool isAiring;
  final int popularity;
  final String? rank;
  final Airing airing;
  final List<Genre> genres;
  final List<AService> studios;
  final List<AService> licensors;
  final List<AService> producers;
  final List<External> external;
  final List<External> streaming;

  const Anime({
    required this.malId,
    required this.url,
    required this.image,
    required this.title,
    required this.type,
    required this.episodes,
    required this.score,
    required this.scoredBy,
    required this.airingStatus,
    required this.popularity,
    required this.rank,
    required this.genres,
    required this.studios,
    required this.licensors,
    required this.producers,
    required this.external,
    required this.streaming,
    required this.airing,
    required this.synopsis,
    required this.background,
    required this.duration,
    required this.rating,
    required this.isAiring,
  });

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [
        malId,
        url,
        image,
        title,
        type,
        episodes,
        score,
        scoredBy,
        airingStatus,
        popularity,
        rank,
        genres,
      ];
}
