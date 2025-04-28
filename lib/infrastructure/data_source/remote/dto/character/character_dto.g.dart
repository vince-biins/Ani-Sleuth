// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterDto _$CharacterDtoFromJson(Map<String, dynamic> json) => CharacterDto(
      malId: (json['mal_id'] as num).toInt(),
      url: json['url'] as String,
      images: json['images'] == null
          ? null
          : ImageDto.fromJson(json['images'] as Map<String, dynamic>),
      name: json['name'] as String,
      nameKanji: json['nameKanji'] as String?,
      nicknames: (json['nicknames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      favorites: (json['favorites'] as num).toInt(),
      about: json['about'] as String,
    );

Map<String, dynamic> _$CharacterDtoToJson(CharacterDto instance) =>
    <String, dynamic>{
      'mal_id': instance.malId,
      'url': instance.url,
      'images': instance.images,
      'name': instance.name,
      'nameKanji': instance.nameKanji,
      'nicknames': instance.nicknames,
      'favorites': instance.favorites,
      'about': instance.about,
    };
