import 'package:json_annotation/json_annotation.dart';

part 'airing_dto.g.dart';

@JsonSerializable()
class AiringDto {
  final String string;
  final ({DateDto from, DateDto to})? prop;

  AiringDto({
    required this.string,
    required this.prop,
  });

  factory AiringDto.fromJson(Map<String, dynamic> json) =>
      _$AiringDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AiringDtoToJson(this);
}

@JsonSerializable()
class DateDto {
  final int? day;
  final int? month;
  final int? year;
  DateDto({
    required this.day,
    required this.month,
    required this.year,
  });

  factory DateDto.fromJson(Map<String, dynamic> json) =>
      _$DateDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DateDtoToJson(this);
}
