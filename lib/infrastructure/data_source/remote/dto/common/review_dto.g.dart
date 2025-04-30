// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewDto _$ReviewDtoFromJson(Map<String, dynamic> json) => ReviewDto(
      malId: (json['mal_id'] as num).toInt(),
      entryType: $enumDecode(_$EntryTypeEnumMap, json['entryType']),
      review: json['review'] as String,
      score: (json['score'] as num).toInt(),
      date: json['date'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      isSpoiler: json['is_spoiler'] as bool,
      reactions:
          ReactionDto.fromJson(json['reactions'] as Map<String, dynamic>),
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReviewDtoToJson(ReviewDto instance) => <String, dynamic>{
      'mal_id': instance.malId,
      'entryType': _$EntryTypeEnumMap[instance.entryType]!,
      'review': instance.review,
      'score': instance.score,
      'date': instance.date,
      'tags': instance.tags,
      'is_spoiler': instance.isSpoiler,
      'reactions': instance.reactions,
      'user': instance.user,
    };

const _$EntryTypeEnumMap = {
  EntryType.anime: 'anime',
  EntryType.manga: 'manga',
  EntryType.people: 'people',
};

ReactionDto _$ReactionDtoFromJson(Map<String, dynamic> json) => ReactionDto(
      overall: (json['overall'] as num?)?.toInt(),
      nice: (json['nice'] as num?)?.toInt(),
      loveIt: (json['love_it'] as num?)?.toInt(),
      funny: (json['funny'] as num?)?.toInt(),
      confusing: (json['confusing'] as num?)?.toInt(),
      informative: (json['informative'] as num?)?.toInt(),
      wellWritten: (json['well_written'] as num?)?.toInt(),
      creative: (json['creative'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ReactionDtoToJson(ReactionDto instance) =>
    <String, dynamic>{
      'overall': instance.overall,
      'nice': instance.nice,
      'love_it': instance.loveIt,
      'funny': instance.funny,
      'confusing': instance.confusing,
      'informative': instance.informative,
      'well_written': instance.wellWritten,
      'creative': instance.creative,
    };
