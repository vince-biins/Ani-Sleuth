import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class Title extends Equatable {
  final String title;
  final String type;

  const Title({
    required this.title,
    required this.type,
  });

  @override
  List<Object?> get props => [title, type];
  @override
  bool get stringify => true;
}
