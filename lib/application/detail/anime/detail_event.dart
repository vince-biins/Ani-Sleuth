part of 'detail_bloc.dart';

@Freezed(copyWith: false, toJson: false, fromJson: false)
sealed class DetailEvent with _$DetailEvent {
  const factory DetailEvent.loadedDetailPage() = LoadedDetailPage;
  const factory DetailEvent.refresedhDetailPage() = RefreshedDetailPage;
  const factory DetailEvent.watchedTrailerDetailPage() =
      WatchedTrailerDetailPage;
}
