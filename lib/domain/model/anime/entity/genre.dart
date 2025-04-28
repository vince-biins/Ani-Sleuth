import 'package:equatable/equatable.dart';

class Genre extends Equatable {
  final int malId;
  final String name;
  final String url;
  final int count;

  const Genre({
    required this.malId,
    required this.name,
    required this.url,
    required this.count,
  });

  @override
  List<Object?> get props => [
        malId,
        name,
        url,
        count,
      ];

  @override
  bool? get stringify => true;
}
