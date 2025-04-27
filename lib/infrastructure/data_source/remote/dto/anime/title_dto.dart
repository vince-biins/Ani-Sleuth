import 'package:json_annotation/json_annotation.dart';

part 'title_dto.g.dart';

@JsonSerializable()
class TitleDto {
  final String title;
  final String type;

  TitleDto({
    required this.title,
    required this.type,
  });

  factory TitleDto.fromJson(Map<String, dynamic> json) =>
      _$TitleDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TitleDtoToJson(this);
}
