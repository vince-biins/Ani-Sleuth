import 'package:json_annotation/json_annotation.dart';

enum EntryType {
  @JsonValue('anime')
  anime,
  @JsonValue('manga')
  manga,
  @JsonValue('people')
  people,
}
