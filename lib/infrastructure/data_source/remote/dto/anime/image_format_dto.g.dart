// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_format_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageFormatDto _$ImageFormatDtoFromJson(Map<String, dynamic> json) =>
    ImageFormatDto(
      imageUrl: json['image_url'] as String?,
      smallImageUrl: json['small_image_url'] as String?,
      largeImageUrl: json['large_image_url'] as String?,
      mediumImageUrl: json['medium_image_url'] as String?,
      maximumImageUrl: json['maximum_image_url'] as String?,
    );

Map<String, dynamic> _$ImageFormatDtoToJson(ImageFormatDto instance) =>
    <String, dynamic>{
      'image_url': instance.imageUrl,
      'small_image_url': instance.smallImageUrl,
      'large_image_url': instance.largeImageUrl,
      'medium_image_url': instance.mediumImageUrl,
      'maximum_image_url': instance.maximumImageUrl,
    };
