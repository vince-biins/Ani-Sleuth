import 'package:ani_sleuth/application/base/base_event.dart';
import 'package:ani_sleuth/application/base/base_state.dart';
import 'package:ani_sleuth/application/base/cubit/navigation_cubit.dart';
import 'package:ani_sleuth/application/dashboard/bloc/dashboard_bloc.dart';
import 'package:ani_sleuth/core/injectors/dependency_injection.dart';
import 'package:ani_sleuth/presentation/page/detail/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DashboardBloc>()
        ..add(const DashboardEvent.base(BaseEvent.loadPage())),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Top Anime'),
        ),
        body: MultiBlocListener(
          listeners: [
            BlocListener<NavigationCubit, NavigationState>(
              listener: (context, state) {
                if (state is NavigateToNavigation) {
                  final arguments = state.arguments as String;
                  Navigator.of(context).push(
                    DetailPage.route(arguments),
                  );
                }
              },
            ),
            BlocListener<DashboardBloc, DashboardState>(
              listener: (context, state) {
                if (state is Error) {
                  final message = state as Error;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Error: ${message.message}')),
                  );
                }
              },
            ),
          ],
          child: Center(
            child: BlocBuilder<DashboardBloc, DashboardState>(
              builder: (context, state) {
                switch (state) {
                  case Initial():
                    return const Text('Initial State');
                  case Loading():
                    return const CircularProgressIndicator();
                  case Success(:final DashboardData data):
                    return ListView.builder(
                      itemCount: data.seasonalAnime.length,
                      itemBuilder: (context, index) {
                        final seasonalAnime = data.seasonalAnime[index];
                        return ListTile(
                          title: Text(seasonalAnime.title),
                          subtitle: Text(seasonalAnime.toString()),
                        );
                      },
                    );
                  case Error(:final String message):
                    return Text('Error: $message');
                }
              },
            ),
          ),
        ),
        floatingActionButton: BlocBuilder<DashboardBloc, DashboardState>(
          builder: (context, state) {
            return FloatingActionButton(
              onPressed: () {
                context
                    .read<NavigationCubit>()
                    .navigateTo('/details', arguments: 'Sample');
              },
              child: const Icon(Icons.refresh),
            );
          },
        ),
      ),
    );
  }
}
