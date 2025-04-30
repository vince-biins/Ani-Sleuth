import 'package:ani_sleuth/domain/model/anime/enum/anime_type.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/airing_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/external_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/genre_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/service_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/title_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/trailer_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/common/image_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime_dto.g.dart';

@JsonSerializable()
class AnimeDto {
  @JsonKey(name: 'mal_id')
  final int malId;
  final String url;
  final ImageDto images;
  final String title;
  final List<TitleDto> titles;
  final AnimeType type;
  final int? episodes;
  final String status;
  @JsonKey(name: 'airing')
  final bool isAiring;
  final double? score;
  @JsonKey(name: 'scored_by')
  final int? scoredBy;
  final int? rank;
  final AiringDto aired;
  final String duration;
  final String rating;
  final String? synopsis;
  final String? background;
  final int popularity;
  final TrailerDto? trailer;
  final List<GenreDto> genres;
  final List<ServiceDto> studios;
  final List<ServiceDto> licensors;
  final List<ServiceDto> producers;
  final List<ExternalDto>? external;
  final List<ExternalDto>? streaming;
  final ({
    List<String> openings,
    List<String> endings,
  })? theme;

  const AnimeDto({
    required this.malId,
    required this.url,
    required this.images,
    required this.titles,
    required this.title,
    required this.type,
    required this.episodes,
    required this.status,
    required this.isAiring,
    required this.score,
    required this.scoredBy,
    required this.rank,
    required this.aired,
    required this.duration,
    required this.rating,
    required this.synopsis,
    required this.background,
    required this.popularity,
    required this.genres,
    required this.studios,
    required this.licensors,
    required this.producers,
    required this.external,
    required this.streaming,
    required this.theme,
    required this.trailer,
  });

  factory AnimeDto.fromJson(Map<String, dynamic> json) =>
      _$AnimeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeDtoToJson(this);
}
