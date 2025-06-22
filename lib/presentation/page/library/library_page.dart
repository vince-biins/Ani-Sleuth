import 'package:ani_sleuth/application/library/library_bloc.dart';
import 'package:ani_sleuth/core/injectors/dependency_injection.dart';
import 'package:ani_sleuth/presentation/page/library/library_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/base/base_state.dart';
import '../../../application/base/cubit/navigation_cubit.dart';

class LibraryPage extends StatelessWidget {
  final ({String title, String subtitle, String imgUrl}) header;
  const LibraryPage({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<LibraryBloc>()..add(LibraryEvent.loadedLibraryPage()),
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
            BlocListener<LibraryBloc, LibraryState>(
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
          child: BlocBuilder<LibraryBloc, LibraryState>(
            builder: (context, state) {
              switch (state) {
                case Initial() || Loading():
                  return const CircularProgressIndicator();
                case Success(:final LibraryData data):
                  return LibraryContent(
                    data: data,
                    header: header,
                  );
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
