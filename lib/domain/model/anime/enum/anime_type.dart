// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

enum AnimeType {
  @JsonValue('tv')
  tv,

  @JsonValue('movie')
  movie,

  @JsonValue('ova')
  ova,

  @JsonValue('special')
  special,

  @JsonValue('ona')
  ona,

  @JsonValue('music')
  music,

  @JsonValue('cm')
  cm,

  @JsonValue('pv')
  pv,

  @JsonValue('tv_special')
  tv_special,
}
