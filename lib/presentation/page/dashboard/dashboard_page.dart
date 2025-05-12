import 'package:ani_sleuth/application/base/base_state.dart';
import 'package:ani_sleuth/application/base/cubit/navigation_cubit.dart';
import 'package:ani_sleuth/application/dashboard/bloc/dashboard_bloc.dart';
import 'package:ani_sleuth/core/injectors/dependency_injection.dart';
import 'package:ani_sleuth/core/platform_provider.dart';
import 'package:ani_sleuth/core/util.dart';
import 'package:ani_sleuth/presentation/components/ani_sidebar.dart';
import 'package:ani_sleuth/presentation/navigation/destinations/ani_route_builder.dart';
import 'package:ani_sleuth/presentation/page/dashboard/dashboard_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final shouldHaveDrawer = (PlatformProvider.isMobile() || context.isCompact);
    return BlocProvider(
      create: (context) => getIt<DashboardBloc>()
        ..add(const DashboardEvent.loadPage(ApiBatch.first)),
      child: Scaffold(
        drawer: shouldHaveDrawer
            ? AniSidebar(
                onClick: (destination) {
                  context.read<NavigationCubit>().navigateTo(destination);
                },
              )
            : null,
        appBar: AppBar(
          surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
          title: const Text('Ani Sleuth'),
          leading: (shouldHaveDrawer)
              ? Builder(
                  builder: (context) {
                    return IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    );
                  },
                )
              : null,
        ),
        body: MultiBlocListener(
          listeners: [
            BlocListener<NavigationCubit, NavigationState>(
              listener: (context, state) {
                _handleNavigation(context, state);
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
          child: BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
              switch (state) {
                case Initial() || Loading():
                  return const CircularProgressIndicator();
                case Success(:final DashboardData data):
                  return DashboardContent(data: data);
                case Error(:final String message):
                  return Text('Error: $message');
              }
            },
          ),
        ),
      ),
    );
  }

  _handleNavigation(BuildContext context, NavigationState state) {
    if (state is NavigateToNavigation) {
      final route = state.route;

      switch (route) {
        case AnimeDetailRoute():
          final r = state.route as AnimeDetailRoute;
          r.push(context);
          break;
        case FavoriteDetailRoute():
          route.push(context);
        case MostFavoriteRoute():
          route.push(context);
        case CharacterDetailRoute():
          route.push(context);
        case TopAnimeRoute():
          route.push(context);
        case SeasonalAnimeRoute():
          route.push(context);
        case TopCharacterRoute():
          route.push(context);
        case TopMangaRoute():
          route.push(context);
        default:
          ErrorRoute().push(context);
      }
    } else if (state is PopNavigation) {
      Navigator.of(context).pop();
    }
  }
}
