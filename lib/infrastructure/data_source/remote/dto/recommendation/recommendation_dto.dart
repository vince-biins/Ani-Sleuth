import 'package:ani_sleuth/infrastructure/data_source/remote/dto/common/image_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'recommendation_dto.g.dart';

@JsonSerializable()
class RecommendationDto {
  final EntryDto entry;
  RecommendationDto({required this.entry});

  factory RecommendationDto.fromJson(Map<String, dynamic> json) =>
      _$RecommendationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendationDtoToJson(this);
}

@JsonSerializable()
class EntryDto {
  @JsonKey(name: 'mal_id')
  final int malId;
  final String url;
  final ImageDto images;
  final String title;

  EntryDto({
    required this.malId,
    required this.url,
    required this.images,
    required this.title,
  });

  factory EntryDto.fromJson(Map<String, dynamic> json) =>
      _$EntryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$EntryDtoToJson(this);
}
