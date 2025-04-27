import 'package:json_annotation/json_annotation.dart';

part 'api_success.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiSuccess<T> {
  final T? data;

  ApiSuccess({required this.data});

  factory ApiSuccess.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ApiSuccessFromJson(json, fromJsonT);
}
