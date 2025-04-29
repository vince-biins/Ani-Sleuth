import 'package:ani_sleuth/domain/model/enum/entry_type.dart';
import 'package:ani_sleuth/infrastructure/data_source/remote/dto/common/user_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'review_dto.g.dart';

@JsonSerializable()
class ReviewDto {
  @JsonKey(name: 'mal_id')
  final int malId;
  final EntryType entryType;
  final String review;
  final int score;
  final String date;
  final List<String> tags;
  @JsonKey(name: 'is_spoiler')
  final bool isSpoiler;
  final ReactionDto reactions;
  final UserDto user;

  ReviewDto({
    required this.malId,
    required this.entryType,
    required this.review,
    required this.score,
    required this.date,
    required this.tags,
    required this.isSpoiler,
    required this.reactions,
    required this.user,
  });

  factory ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewDtoToJson(this);
}

@JsonSerializable()
class ReactionDto {
  final int? overall;
  final int? nice;
  @JsonKey(name: 'love_it')
  final int? loveIt;
  final int? funny;
  final int? confusing;
  final int? informative;
  @JsonKey(name: 'well_written')
  final int? wellWritten;
  final int? creative;

  ReactionDto({
    required this.overall,
    required this.nice,
    required this.loveIt,
    required this.funny,
    required this.confusing,
    required this.informative,
    required this.wellWritten,
    required this.creative,
  });

  factory ReactionDto.fromJson(Map<String, dynamic> json) =>
      _$ReactionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ReactionDtoToJson(this);
}
