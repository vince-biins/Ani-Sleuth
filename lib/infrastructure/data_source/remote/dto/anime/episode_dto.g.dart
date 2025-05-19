// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodeDto _$EpisodeDtoFromJson(Map<String, dynamic> json) => EpisodeDto(
      malId: (json['mal_id'] as num).toInt(),
      title: json['title'] as String,
      aired: json['aired'] as String,
      score: (json['score'] as num).toDouble(),
      filler: json['filler'] as bool,
      recap: json['recap'] as bool,
      url: json['url'] as String,
    );

Map<String, dynamic> _$EpisodeDtoToJson(EpisodeDto instance) =>
    <String, dynamic>{
      'mal_id': instance.malId,
      'title': instance.title,
      'aired': instance.aired,
      'score': instance.score,
      'filler': instance.filler,
      'recap': instance.recap,
      'url': instance.url,
    };
