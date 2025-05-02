import 'package:ani_sleuth/application/base/base_event.dart';
import 'package:ani_sleuth/application/base/base_state.dart';
import 'package:ani_sleuth/application/dashboard/bloc/dashboard_bloc.dart';
import 'package:ani_sleuth/application/dashboard/cubit/dashboard_navigation_cubit.dart';
import 'package:ani_sleuth/core/injectors/dependency_injection.dart';
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
        body: BlocListener<DashboardNavigationCubit, DashboardNavigationState>(
          listener: (context, state) {
            if (state is NavigateToAnimeDetails) {
              Navigator.pushNamed(
                context,
                '/animeDetails',
                arguments: state.animeId,
              );
            } else if (state is NavigateToMangaDetails) {
              Navigator.pushNamed(
                context,
                '/mangaDetails',
                arguments: state.characterId,
              );
            } else if (state is PopDashboardNavigation) {
              Navigator.pop(context);
            }
          },
          child: Center(
            child: BlocBuilder<DashboardBloc, DashboardState>(
              builder: (context, state) {
                switch (state) {
                  case Initial():
                    return const Text('Initial State');
                  case Loading():
                    return const CircularProgressIndicator();
                  case Success(:DashboardData data):
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
                  case Error(:String message):
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
                context.read<DashboardBloc>().add(
                      const DashboardEvent.base(BaseEvent.refreshPage()),
                    );
              },
              child: const Icon(Icons.refresh),
            );
          },
        ),
      ),
    );
  }
}
