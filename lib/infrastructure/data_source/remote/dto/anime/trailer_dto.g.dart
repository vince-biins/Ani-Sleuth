// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trailer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrailerDto _$TrailerDtoFromJson(Map<String, dynamic> json) => TrailerDto(
      youtubeId: json['youtube_id'] as String?,
      url: json['url'] as String?,
      embedUrl: json['embed_url'] as String?,
      images: json['images'] == null
          ? null
          : ImageFormatDto.fromJson(json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TrailerDtoToJson(TrailerDto instance) =>
    <String, dynamic>{
      'youtube_id': instance.youtubeId,
      'url': instance.url,
      'embed_url': instance.embedUrl,
      'images': instance.images,
    };
