import 'package:ani_sleuth/domain/model/anime/enum/media_type.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/airing_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/external_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/genre_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/service_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/title_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/trailer_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/common/image_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/common/media_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime_dto.g.dart';

@JsonSerializable()
class AnimeDto extends MediaDto {
  final int? episodes;

  @JsonKey(name: 'airing')
  final bool isAiring;
  final AiringDto aired;
  final String duration;
  final TrailerDto? trailer;
  final List<ServiceDto> studios;
  final List<ServiceDto> licensors;
  final List<ServiceDto> producers;
  final List<ExternalDto>? streaming;
  final ({
    List<String> openings,
    List<String> endings,
  })? theme;

  AnimeDto({
    required this.episodes,
    required this.isAiring,
    required this.aired,
    required this.duration,
    required this.studios,
    required this.licensors,
    required this.producers,
    required this.streaming,
    required this.theme,
    required this.trailer,
    required super.malId,
    required super.url,
    required super.images,
    required super.title,
    required super.type,
    required super.titles,
    required super.status,
    required super.score,
    required super.scoredBy,
    required super.rank,
    required super.synopsis,
    required super.background,
    required super.popularity,
    required super.members,
    required super.favorites,
    required super.rating,
    required super.genres,
    required super.themes,
    required super.external,
  });

  factory AnimeDto.fromJson(Map<String, dynamic> json) =>
      _$AnimeDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnimeDtoToJson(this);
}
