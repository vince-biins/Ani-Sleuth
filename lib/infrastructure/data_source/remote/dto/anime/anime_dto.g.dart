// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeDto _$AnimeDtoFromJson(Map<String, dynamic> json) => AnimeDto(
      malId: (json['mal_id'] as num).toInt(),
      url: json['url'] as String,
      images: ImageDto.fromJson(json['images'] as Map<String, dynamic>),
      titles: (json['titles'] as List<dynamic>)
          .map((e) => TitleDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String,
      episodes: (json['episodes'] as num).toInt(),
      status: json['status'] as String,
      isAiring: json['airing'] as bool,
      score: (json['score'] as num).toDouble(),
      scoredBy: (json['scored_by'] as num).toInt(),
      rank: json['rank'] as String,
      aired: AiringDto.fromJson(json['aired'] as Map<String, dynamic>),
      duration: json['duration'] as String,
      rating: json['rating'] as String,
      synopsis: json['synopsis'] as String,
      background: json['background'] as String,
      popularity: (json['popularity'] as num).toInt(),
      genres: (json['genres'] as List<dynamic>)
          .map((e) => ServiceDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      studios: (json['studios'] as List<dynamic>)
          .map((e) => ServiceDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      licensors: (json['licensors'] as List<dynamic>)
          .map((e) => ServiceDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      producers: (json['producers'] as List<dynamic>)
          .map((e) => ServiceDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      external: (json['external'] as List<dynamic>?)
          ?.map((e) => ExternalDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      streaming: (json['streaming'] as List<dynamic>?)
          ?.map((e) => ExternalDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      theme: _$recordConvertNullable(
        json['theme'],
        ($jsonValue) => (
          endings: ($jsonValue['endings'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          openings: ($jsonValue['openings'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
        ),
      ),
    );

Map<String, dynamic> _$AnimeDtoToJson(AnimeDto instance) => <String, dynamic>{
      'mal_id': instance.malId,
      'url': instance.url,
      'images': instance.images,
      'titles': instance.titles,
      'type': instance.type,
      'episodes': instance.episodes,
      'status': instance.status,
      'airing': instance.isAiring,
      'score': instance.score,
      'scored_by': instance.scoredBy,
      'rank': instance.rank,
      'aired': instance.aired,
      'duration': instance.duration,
      'rating': instance.rating,
      'synopsis': instance.synopsis,
      'background': instance.background,
      'popularity': instance.popularity,
      'genres': instance.genres,
      'studios': instance.studios,
      'licensors': instance.licensors,
      'producers': instance.producers,
      'external': instance.external,
      'streaming': instance.streaming,
      'theme': instance.theme == null
          ? null
          : <String, dynamic>{
              'endings': instance.theme!.endings,
              'openings': instance.theme!.openings,
            },
    };

$Rec? _$recordConvertNullable<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    value == null ? null : convert(value as Map<String, dynamic>);
