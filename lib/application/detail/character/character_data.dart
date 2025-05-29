part of 'character_bloc.dart';

@Freezed(toJson: false, fromJson: false)
abstract class CharacterData with _$CharacterData {
  const factory CharacterData({
    required Character? character,
  }) = _CharacterData;

  factory CharacterData.initialized() => const CharacterData(
        character: null,
      );
}
