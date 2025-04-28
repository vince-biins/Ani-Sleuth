import 'package:ani_sleuth/infrastructure/data_source/remote/dto/common/image_format_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image_dto.g.dart';

@JsonSerializable()
class ImageDto {
  final ImageFormatDto? jpg;
  final ImageFormatDto? webp;

  ImageDto({
    this.jpg,
    this.webp,
  });

  factory ImageDto.fromJson(Map<String, dynamic> json) =>
      _$ImageDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ImageDtoToJson(this);
}
