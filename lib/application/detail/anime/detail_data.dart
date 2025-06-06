part of 'detail_bloc.dart';

@Freezed(toJson: false, fromJson: false)
abstract class DetailData with _$DetailData {
  const factory DetailData({
    required FullAnime? anime,
    required List<Episode> episodes,
    required List<Recommendation> recommendation,
    required CharacterParam character,
  }) = _DetailData;

  factory DetailData.initialized() => const DetailData(
        anime: null,
        episodes: [],
        recommendation: [],
        character: CharacterParam(),
      );
}
