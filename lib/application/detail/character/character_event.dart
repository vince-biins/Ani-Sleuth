part of 'character_bloc.dart';

@Freezed(copyWith: false, toJson: false, fromJson: false)
sealed class CharacterEvent with _$CharacterEvent {
  const factory CharacterEvent.loadedCharacterDetailPage() =
      LoadedCharacterDetailPage;
}
