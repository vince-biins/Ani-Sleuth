// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceDto _$ServiceDtoFromJson(Map<String, dynamic> json) => ServiceDto(
      malId: (json['mal_id'] as num).toInt(),
      name: json['name'] as String,
      type: $enumDecode(_$EntryTypeEnumMap, json['type']),
      url: json['url'] as String,
    );

Map<String, dynamic> _$ServiceDtoToJson(ServiceDto instance) =>
    <String, dynamic>{
      'mal_id': instance.malId,
      'name': instance.name,
      'type': _$EntryTypeEnumMap[instance.type]!,
      'url': instance.url,
    };

const _$EntryTypeEnumMap = {
  EntryType.anime: 'anime',
  EntryType.manga: 'manga',
  EntryType.people: 'people',
  EntryType.character: 'character',
};
