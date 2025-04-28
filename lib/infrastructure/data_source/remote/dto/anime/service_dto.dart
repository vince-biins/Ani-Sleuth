import 'package:ani_sleuth/domain/model/enum/entry_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'service_dto.g.dart';

@JsonSerializable()
class ServiceDto {
  @JsonKey(name: 'mal_id')
  final int malId;
  final String name;
  final EntryType type;
  final String url;

  ServiceDto({
    required this.malId,
    required this.name,
    required this.type,
    required this.url,
  });

  factory ServiceDto.fromJson(Map<String, dynamic> json) =>
      _$ServiceDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceDtoToJson(this);
}
