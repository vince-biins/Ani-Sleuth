import 'package:ani_sleuth/domain/model/anime/enum/media_type.dart';
import 'package:equatable/equatable.dart';

class Media extends Equatable {
  final int malId;
  final String url;
  final String? imageUrl;
  final String title;
  final MediaType type;
  final String status;
  final int popularity;
  final String rank;
  final double? score;
  final int? scoredBy;

  const Media({
    required this.malId,
    required this.url,
    required this.imageUrl,
    required this.title,
    required this.type,
    required this.status,
    required this.popularity,
    required this.rank,
    required this.score,
    required this.scoredBy,
  });

  @override
  List<Object?> get props => [
        malId,
        url,
        imageUrl,
        title,
        type,
        status,
        popularity,
        rank,
      ];
  @override
  bool? get stringify => true;
}
