import 'package:json_annotation/json_annotation.dart';

part 'image_format_dto.g.dart';

@JsonSerializable()
class ImageFormatDto {
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @JsonKey(name: 'small_image_url')
  final String? smallImageUrl;
  @JsonKey(name: 'large_image_url')
  final String? largeImageUrl;
  @JsonKey(name: 'medium_image_url')
  final String? mediumImageUrl;
  @JsonKey(name: 'maximum_image_url')
  final String? maximumImageUrl;

  ImageFormatDto({
    this.imageUrl,
    this.smallImageUrl,
    this.largeImageUrl,
    this.mediumImageUrl,
    this.maximumImageUrl,
  });

  factory ImageFormatDto.fromJson(Map<String, dynamic> json) =>
      _$ImageFormatDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ImageFormatDtoToJson(this);
}
