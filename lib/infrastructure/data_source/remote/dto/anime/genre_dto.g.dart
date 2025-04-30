// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenreDto _$GenreDtoFromJson(Map<String, dynamic> json) => GenreDto(
      malId: (json['mal_id'] as num).toInt(),
      name: json['name'] as String,
      url: json['url'] as String,
      count: (json['count'] as num?)?.toInt(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$GenreDtoToJson(GenreDto instance) => <String, dynamic>{
      'mal_id': instance.malId,
      'name': instance.name,
      'type': instance.type,
      'url': instance.url,
      'count': instance.count,
    };
