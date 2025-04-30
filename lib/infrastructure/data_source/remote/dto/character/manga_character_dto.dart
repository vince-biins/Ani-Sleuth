import 'package:ani_sleuth/infrastructure/data_source/remote/dto/character/character_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manga_character_dto.g.dart';

@JsonSerializable()
class MangaCharacterDto {
  final CharacterDto character;
  final String role;

  MangaCharacterDto({
    required this.character,
    required this.role,
  });

  factory MangaCharacterDto.fromJson(Map<String, dynamic> json) =>
      _$MangaCharacterDtoFromJson(json);
  Map<String, dynamic> toJson() => _$MangaCharacterDtoToJson(this);
}
