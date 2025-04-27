import 'package:equatable/equatable.dart';

class Airing extends Equatable {
  final String defaultDateString;
  final String formattedDateString;
  final ({ADate from, ADate to})? date;

  const Airing({
    required this.defaultDateString,
    required this.date,
    required this.formattedDateString,
  });

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [
        defaultDateString,
        date,
        formattedDateString,
      ];
}

class ADate extends Equatable {
  final int day;
  final int month;
  final int year;

  const ADate({
    required this.day,
    required this.month,
    required this.year,
  });

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [day, month, year];
}
