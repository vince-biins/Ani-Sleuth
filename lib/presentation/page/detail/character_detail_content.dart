import 'package:ani_sleuth/application/detail/character/character_bloc.dart';
import 'package:flutter/widgets.dart';

class CharacterDetailContent extends StatelessWidget {
  final CharacterData data;
  const CharacterDetailContent({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(data.toString()),
    );
  }
}
