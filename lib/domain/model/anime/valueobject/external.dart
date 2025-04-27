import 'package:equatable/equatable.dart';

class External extends Equatable {
  final String url;
  final String name;

  const External({
    required this.url,
    required this.name,
  });

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [
        url,
        name,
      ];
}
