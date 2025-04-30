// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_character_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeCharacterDto _$AnimeCharacterDtoFromJson(Map<String, dynamic> json) =>
    AnimeCharacterDto(
      character:
          CharacterDto.fromJson(json['character'] as Map<String, dynamic>),
      role: json['role'] as String,
      favorites: (json['favorites'] as num).toInt(),
    );

Map<String, dynamic> _$AnimeCharacterDtoToJson(AnimeCharacterDto instance) =>
    <String, dynamic>{
      'character': instance.character,
      'role': instance.role,
      'favorites': instance.favorites,
    };
