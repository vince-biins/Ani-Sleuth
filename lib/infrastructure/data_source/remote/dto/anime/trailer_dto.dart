import 'package:ani_sleuth/infrastructure/data_source/remote/dto/anime/image_format_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'trailer_dto.g.dart';

@JsonSerializable()
class TrailerDto {
  @JsonKey(name: 'youtube_id')
  final String? youtubeId;
  final String? url;
  @JsonKey(name: 'embed_url')
  final String? embedUrl;
  final ImageFormatDto? images;

  TrailerDto({
    this.youtubeId,
    this.url,
    this.embedUrl,
    this.images,
  });

  factory TrailerDto.fromJson(Map<String, dynamic> json) =>
      _$TrailerDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TrailerDtoToJson(this);
}
