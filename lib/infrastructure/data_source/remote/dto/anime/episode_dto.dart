import 'package:json_annotation/json_annotation.dart';

part 'episode_dto.g.dart';

@JsonSerializable()
class EpisodeDto {
  @JsonKey(name: 'mal_id')
  final int malId;
  final String title;
  final String aired;
  final double score;
  final bool filler;
  final bool recap;
  final String url;

  EpisodeDto({
    required this.malId,
    required this.title,
    required this.aired,
    required this.score,
    required this.filler,
    required this.recap,
    required this.url,
  });

  factory EpisodeDto.fromJson(Map<String, dynamic> json) =>
      _$EpisodeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeDtoToJson(this);
}
