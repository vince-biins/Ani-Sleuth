import 'package:ani_sleuth/domain/model/common/media.dart';

class Manga extends Media {
  final int? chapters;
  final int? volumes;

  const Manga({
    required super.malId,
    required super.url,
    required super.imageUrl,
    required super.title,
    required super.type,
    required super.status,
    required super.popularity,
    required super.rank,
    required this.chapters,
    required this.volumes,
    required super.score,
    required super.scoredBy,
  });
  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [
        ...super.props,
        chapters,
        volumes,
      ];
}
