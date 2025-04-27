import 'package:json_annotation/json_annotation.dart';

part 'external_dto.g.dart';

@JsonSerializable()
class ExternalDto {
  final String? url;
  final String? name;

  ExternalDto({
    this.url,
    this.name,
  });

  factory ExternalDto.fromJson(Map<String, dynamic> json) =>
      _$ExternalDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ExternalDtoToJson(this);
}
