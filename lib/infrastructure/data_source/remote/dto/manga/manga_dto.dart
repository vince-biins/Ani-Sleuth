import 'package:ani_sleuth/domain/model/anime/enum/media_type.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/airing_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/external_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/genre_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/service_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/title_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/common/image_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/common/media_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manga_dto.g.dart';

@JsonSerializable()
class MangaDto extends MediaDto {
  final int? chapters;
  final int? volumes;
  @JsonKey(name: 'publishing')
  final bool isPublishing;
  final AiringDto published;
  final List<ServiceDto> authors;
  final List<ServiceDto> serializations;

  MangaDto({
    required this.chapters,
    required this.volumes,
    required this.isPublishing,
    required this.published,
    required this.authors,
    required this.serializations,
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

  factory MangaDto.fromJson(Map<String, dynamic> json) =>
      _$MangaDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MangaDtoToJson(this);
}
