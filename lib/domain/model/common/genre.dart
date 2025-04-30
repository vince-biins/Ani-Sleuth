import 'package:equatable/equatable.dart';

class Genre extends Equatable {
  final int malId;
  final String name;
  final String url;
  final int? count;
  final String? type;

  const Genre({
    required this.malId,
    required this.name,
    required this.url,
    required this.count,
    required this.type,
  });

  @override
  List<Object?> get props => [
        malId,
        name,
        url,
        count,
        type,
      ];

  @override
  bool? get stringify => true;
}
