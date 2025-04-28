import 'package:equatable/equatable.dart';

class TopCharacter extends Equatable {
  final int malId;
  final String url;
  final String? images;
  final String name;
  final String? nameKanji;
  final List<String> nicknames;
  final int favorites;
  final String about;

  const TopCharacter({
    required this.malId,
    required this.url,
    required this.images,
    required this.name,
    required this.nameKanji,
    required this.nicknames,
    required this.favorites,
    required this.about,
  });

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        malId,
        url,
        images,
        name,
        nameKanji,
        nicknames,
        favorites,
        about,
      ];
}
