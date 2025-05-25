import 'package:ani_sleuth/application/detail/bloc/detail_bloc.dart';
import 'package:ani_sleuth/core/injectors/dependency_injection.dart';
import 'package:ani_sleuth/presentation/components/ani_image_network.dart';
import 'package:ani_sleuth/presentation/page/detail/detail_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/base/base_state.dart';
import '../../../application/base/cubit/navigation_cubit.dart';

class DetailPage extends StatelessWidget {
  final int? animeId;
  final String pageTitle;

  const DetailPage({super.key, this.animeId, required this.pageTitle});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DetailBloc>(param1: animeId)
        ..add(const DetailEvent.loadedDetailPage()),
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
            BlocListener<DetailBloc, DetailState>(
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
          child: BlocBuilder<DetailBloc, DetailState>(
            builder: (context, state) {
              switch (state) {
                case Initial() || Loading():
                  return const CircularProgressIndicator();
                case Success(:final DetailData data):
                  return DetailContent(data: data);

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
