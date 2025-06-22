part of 'library_bloc.dart';

@Freezed(toJson: false, fromJson: false)
abstract class LibraryData with _$LibraryData {
  factory LibraryData({
    required List<TopAnime> topAnime,
  }) = _LibraryData;
}
