// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_character_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MangaCharacterDto _$MangaCharacterDtoFromJson(Map<String, dynamic> json) =>
    MangaCharacterDto(
      character:
          CharacterDto.fromJson(json['character'] as Map<String, dynamic>),
      role: json['role'] as String,
    );

Map<String, dynamic> _$MangaCharacterDtoToJson(MangaCharacterDto instance) =>
    <String, dynamic>{
      'character': instance.character,
      'role': instance.role,
    };
