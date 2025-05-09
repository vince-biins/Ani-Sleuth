import 'package:json_annotation/json_annotation.dart';

part 'genre_dto.g.dart';

@JsonSerializable()
class GenreDto {
  @JsonKey(name: 'mal_id')
  final int malId;
  final String name;
  final String? type;
  final String url;

  GenreDto({
    required this.malId,
    required this.name,
    required this.url,
    this.type,
  });

  factory GenreDto.fromJson(Map<String, dynamic> json) =>
      _$GenreDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GenreDtoToJson(this);
}
