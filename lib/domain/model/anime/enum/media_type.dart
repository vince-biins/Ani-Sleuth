// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

enum MediaType {
  @JsonValue('TV')
  TV,

  @JsonValue('Movie')
  movie,

  @JsonValue('OVA')
  ova,

  @JsonValue('Special')
  special,

  @JsonValue('ONA')
  ona,

  @JsonValue('Music')
  music,

  @JsonValue('CM')
  cm,

  @JsonValue('PV')
  pv,

  @JsonValue('TV Special')
  tv_special,

  @JsonValue('Manga')
  manga,
}
