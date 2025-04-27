import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class Aimage extends Equatable {
  final AimageFormat? jpg;
  final AimageFormat? webp;

  const Aimage({
    required this.jpg,
    required this.webp,
  });

  @override
  List<Object?> get props => [jpg, webp];
  @override
  bool get stringify => true;
}

@immutable
class AimageFormat extends Equatable {
  final String? imageUrl;
  final String? smallImageUrl;
  final String? largeImageUrl;
  final String? mediumImageUrl;
  final String? maximumImageUrl;

  const AimageFormat({
    required this.imageUrl,
    required this.smallImageUrl,
    required this.largeImageUrl,
    required this.mediumImageUrl,
    required this.maximumImageUrl,
  });

  @override
  List<Object?> get props => [
        imageUrl,
        smallImageUrl,
        largeImageUrl,
        mediumImageUrl,
        maximumImageUrl,
      ];
  @override
  bool get stringify => true;
}
