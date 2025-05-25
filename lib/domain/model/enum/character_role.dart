import 'package:json_annotation/json_annotation.dart';

enum CharacterRole {
  @JsonValue('Main')
  main,

  @JsonValue('Supporting')
  supporting,

  @JsonValue('Others')
  others,
}
