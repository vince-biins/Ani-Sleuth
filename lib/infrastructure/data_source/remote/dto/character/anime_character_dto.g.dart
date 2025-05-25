// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_character_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeCharacterDto _$AnimeCharacterDtoFromJson(Map<String, dynamic> json) =>
    AnimeCharacterDto(
      character:
          CharacterDto.fromJson(json['character'] as Map<String, dynamic>),
      role: $enumDecode(_$CharacterRoleEnumMap, json['role']),
      favorites: (json['favorites'] as num).toInt(),
    );

Map<String, dynamic> _$AnimeCharacterDtoToJson(AnimeCharacterDto instance) =>
    <String, dynamic>{
      'character': instance.character,
      'role': _$CharacterRoleEnumMap[instance.role]!,
      'favorites': instance.favorites,
    };

const _$CharacterRoleEnumMap = {
  CharacterRole.main: 'Main',
  CharacterRole.supporting: 'Supporting',
  CharacterRole.others: 'Others',
};
