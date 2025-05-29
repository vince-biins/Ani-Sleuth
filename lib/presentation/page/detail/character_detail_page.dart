import 'package:ani_sleuth/application/detail/character/character_bloc.dart';
import 'package:ani_sleuth/core/injectors/dependency_injection.dart';
import 'package:ani_sleuth/presentation/page/detail/character_detail_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/base/base_state.dart';
import '../../../application/base/cubit/navigation_cubit.dart';

class CharacterDetailPage extends StatelessWidget {
  final int characterId;
  final String pageTitle;
  const CharacterDetailPage({
    super.key,
    required this.characterId,
    required this.pageTitle,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CharacterBloc>(param1: characterId)
        ..add(CharacterEvent.loadedCharacterDetailPage()),
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(''),
        ),
        body: MultiBlocListener(
          listeners: [
            BlocListener<NavigationCubit, NavigationState>(
              listener: (context, state) {},
            ),
            BlocListener<CharacterBloc, CharacterState>(
              listener: (context, state) {
                if (state is Error) {
                  final message = state as Error;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Error: $message')),
                  );
                }
              },
            ),
          ],
          child: BlocBuilder<CharacterBloc, CharacterState>(
            builder: (context, state) {
              switch (state) {
                case Initial() || Loading():
                  return const CircularProgressIndicator();
                case Success(:final CharacterData data):
                  return CharacterDetailContent(data: data);

                case Error(:final String message):
                  return Text('Error: $message');
              }
            },
          ),
        ),
      ),
    );
  }
}
