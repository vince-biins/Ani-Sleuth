part of 'library_bloc.dart';

@Freezed(copyWith: false, toJson: false, fromJson: false)
class LibraryEvent with _$LibraryEvent {
  const factory LibraryEvent.loadedLibraryPage() = LoadedLibraryPage;
}
