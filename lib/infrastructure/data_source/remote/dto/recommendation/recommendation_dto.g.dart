// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecommendationDto _$RecommendationDtoFromJson(Map<String, dynamic> json) =>
    RecommendationDto(
      entry: EntryDto.fromJson(json['entry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecommendationDtoToJson(RecommendationDto instance) =>
    <String, dynamic>{
      'entry': instance.entry,
    };

EntryDto _$EntryDtoFromJson(Map<String, dynamic> json) => EntryDto(
      malId: (json['mal_id'] as num).toInt(),
      url: json['url'] as String,
      images: ImageDto.fromJson(json['images'] as Map<String, dynamic>),
      title: json['title'] as String,
    );

Map<String, dynamic> _$EntryDtoToJson(EntryDto instance) => <String, dynamic>{
      'mal_id': instance.malId,
      'url': instance.url,
      'images': instance.images,
      'title': instance.title,
    };
