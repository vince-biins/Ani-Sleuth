// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airing_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiringDto _$AiringDtoFromJson(Map<String, dynamic> json) => AiringDto(
      string: json['string'] as String,
      prop: _$recordConvertNullable(
        json['prop'],
        ($jsonValue) => (
          from: DateDto.fromJson($jsonValue['from'] as Map<String, dynamic>),
          to: DateDto.fromJson($jsonValue['to'] as Map<String, dynamic>),
        ),
      ),
    );

Map<String, dynamic> _$AiringDtoToJson(AiringDto instance) => <String, dynamic>{
      'string': instance.string,
      'prop': instance.prop == null
          ? null
          : <String, dynamic>{
              'from': instance.prop!.from,
              'to': instance.prop!.to,
            },
    };

$Rec? _$recordConvertNullable<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    value == null ? null : convert(value as Map<String, dynamic>);

DateDto _$DateDtoFromJson(Map<String, dynamic> json) => DateDto(
      day: (json['day'] as num?)?.toInt(),
      month: (json['month'] as num?)?.toInt(),
      year: (json['year'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DateDtoToJson(DateDto instance) => <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
    };
