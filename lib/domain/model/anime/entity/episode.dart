import 'package:equatable/equatable.dart';

class Episode extends Equatable {
  final int malId;
  final String title;
  final String aired;
  final double score;
  final bool filler;
  final bool recap;
  final String url;

  const Episode({
    required this.malId,
    required this.title,
    required this.aired,
    required this.score,
    required this.filler,
    required this.recap,
    required this.url,
  });

  @override
  List<Object?> get props => [
        malId,
        title,
        aired,
        score,
        filler,
        recap,
        url,
      ];
}
