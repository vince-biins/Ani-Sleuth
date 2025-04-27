import 'package:equatable/equatable.dart';

class AService extends Equatable {
  final int malId;
  final String name;
  final String type;

  const AService({
    required this.malId,
    required this.name,
    required this.type,
  });

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [
        malId,
        name,
        type,
      ];
}
