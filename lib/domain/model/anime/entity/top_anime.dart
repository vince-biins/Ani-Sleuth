import 'package:ani_sleuth/domain/model/anime/enum/anime_type.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class TopAnime extends Equatable {
  final int malId;
  final String url;
  final String image;
  final String title;
  final AnimeType type;
  final String episodes;
  final String score;
  final int scoredBy;
  final String airingStatus;
  final int popularity;
  final int rank;
  final List<String> genres;

  const TopAnime({
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
