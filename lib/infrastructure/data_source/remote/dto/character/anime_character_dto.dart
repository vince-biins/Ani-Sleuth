import 'package:ani_sleuth/domain/model/enum/character_role.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/character/character_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime_character_dto.g.dart';

@JsonSerializable()
class AnimeCharacterDto {
  final CharacterDto character;
  final CharacterRole role;
  final int favorites;

  AnimeCharacterDto({
    required this.character,
    required this.role,
    required this.favorites,
  });

  factory AnimeCharacterDto.fromJson(Map<String, dynamic> json) =>
      _$AnimeCharacterDtoFromJson(json);
  Map<String, dynamic> toJson() => _$AnimeCharacterDtoToJson(this);
}
