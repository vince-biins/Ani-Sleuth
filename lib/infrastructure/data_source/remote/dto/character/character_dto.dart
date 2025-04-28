import 'package:ani_sleuth/infrastructure/data_source/remote/dto/common/image_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'character_dto.g.dart';

@JsonSerializable()
class CharacterDto {
  @JsonKey(name: 'mal_id')
  final int malId;
  final String url;
  final ImageDto? images;
  final String name;
  final String? nameKanji;
  final List<String>? nicknames;
  final int favorites;
  final String about;

  CharacterDto({
    required this.malId,
    required this.url,
    required this.images,
    required this.name,
    required this.nameKanji,
    required this.nicknames,
    required this.favorites,
    required this.about,
  });

  factory CharacterDto.fromJson(Map<String, dynamic> json) =>
      _$CharacterDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDtoToJson(this);
}
