import 'package:json_annotation/json_annotation.dart';

part 'service_dto.g.dart';

@JsonSerializable()
class ServiceDto {
  final int malId;
  final String name;
  final String type;
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
