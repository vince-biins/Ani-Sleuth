part of 'detail_bloc.dart';

@Freezed(toJson: false, fromJson: false)
abstract class DetailData with _$DetailData {
  const factory DetailData({
    required FullAnime? anime,
    required List<Episode> episides,
  }) = _DetailData;

  factory DetailData.initialized() =>
      const DetailData(anime: null, episides: []);
}
