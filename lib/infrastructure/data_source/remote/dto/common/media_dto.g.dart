// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaDto _$MediaDtoFromJson(Map<String, dynamic> json) => MediaDto(
      malId: (json['mal_id'] as num).toInt(),
      url: json['url'] as String,
      images: ImageDto.fromJson(json['images'] as Map<String, dynamic>),
      title: json['title'] as String,
      type: $enumDecode(_$MediaTypeEnumMap, json['type']),
      titles: (json['titles'] as List<dynamic>)
          .map((e) => TitleDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      score: (json['score'] as num?)?.toDouble(),
      scoredBy: (json['scored_by'] as num?)?.toInt(),
      rank: (json['rank'] as num?)?.toInt(),
      synopsis: json['synopsis'] as String?,
      background: json['background'] as String?,
      popularity: (json['popularity'] as num).toInt(),
      members: (json['members'] as num).toInt(),
      favorites: (json['favorites'] as num).toInt(),
      rating: json['rating'] as String?,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => GenreDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      themes: (json['themes'] as List<dynamic>)
          .map((e) => ServiceDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      external: (json['external'] as List<dynamic>?)
          ?.map((e) => ExternalDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MediaDtoToJson(MediaDto instance) => <String, dynamic>{
      'mal_id': instance.malId,
      'url': instance.url,
      'images': instance.images,
      'title': instance.title,
      'type': _$MediaTypeEnumMap[instance.type]!,
      'titles': instance.titles,
      'status': instance.status,
      'score': instance.score,
      'scored_by': instance.scoredBy,
      'rank': instance.rank,
      'synopsis': instance.synopsis,
      'background': instance.background,
      'popularity': instance.popularity,
      'members': instance.members,
      'favorites': instance.favorites,
      'rating': instance.rating,
      'genres': instance.genres,
      'themes': instance.themes,
      'external': instance.external,
    };

const _$MediaTypeEnumMap = {
  MediaType.TV: 'TV',
  MediaType.movie: 'Movie',
  MediaType.ova: 'OVA',
  MediaType.special: 'Special',
  MediaType.ona: 'ONA',
  MediaType.music: 'Music',
  MediaType.cm: 'CM',
  MediaType.pv: 'PV',
  MediaType.tv_special: 'TV Special',
  MediaType.manga: 'Manga',
  MediaType.novel: 'Novel',
  MediaType.light_novel: 'Light Novel',
};
