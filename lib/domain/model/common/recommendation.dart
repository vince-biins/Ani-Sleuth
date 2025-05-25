import 'package:ani_sleuth/domain/model/common/aimage.dart';
import 'package:equatable/equatable.dart';

class Recommendation extends Equatable {
  final int malId;
  final String url;
  final Aimage images;
  final String title;

  const Recommendation({
    required this.malId,
    required this.url,
    required this.images,
    required this.title,
  });

  @override
  List<Object?> get props => [malId, url, images, title];
  @override
  bool? get stringify => true;
}
