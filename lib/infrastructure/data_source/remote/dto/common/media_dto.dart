import 'package:ani_sleuth/domain/model/anime/enum/media_type.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/external_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/genre_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/service_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/title_dto.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/common/image_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_dto.g.dart';

@JsonSerializable()
class MediaDto {
  @JsonKey(name: 'mal_id')
  final int malId;
  final String url;
  final ImageDto images;
  final String title;
  final MediaType type;
  final List<TitleDto> titles;
  final String status;
  final double? score;
  @JsonKey(name: 'scored_by')
  final int? scoredBy;
  final int? rank;
  final String? synopsis;
  final String? background;
  final int popularity;
  final int members;
  final int favorites;
  final String? rating;
  final List<GenreDto> genres;
  final List<ServiceDto> themes;
  final List<ExternalDto>? external;

  MediaDto({
    required this.malId,
    required this.url,
    required this.images,
    required this.title,
    required this.type,
    required this.titles,
    required this.status,
    required this.score,
    required this.scoredBy,
    required this.rank,
    required this.synopsis,
    required this.background,
    required this.popularity,
    required this.members,
    required this.favorites,
    required this.rating,
    required this.genres,
    required this.themes,
    required this.external,
  });

  factory MediaDto.fromJson(Map<String, dynamic> json) =>
      _$MediaDtoFromJson(json);
  Map<String, dynamic> toJson() => _$MediaDtoToJson(this);
}
