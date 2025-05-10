import 'package:ani_sleuth/application/base/base_event.dart';
import 'package:ani_sleuth/application/base/base_state.dart';
import 'package:ani_sleuth/application/base/cubit/navigation_cubit.dart';
import 'package:ani_sleuth/application/dashboard/bloc/dashboard_bloc.dart';
import 'package:ani_sleuth/core/injectors/dependency_injection.dart';
import 'package:ani_sleuth/core/platform_provider.dart';
import 'package:ani_sleuth/core/util.dart';
import 'package:ani_sleuth/presentation/components/ani_sidebar.dart';
import 'package:ani_sleuth/presentation/navigation/destinations/anime_routes.dart';
import 'package:ani_sleuth/presentation/page/dashboard/dashboard_content.dart';
import 'package:ani_sleuth/presentation/page/detail/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final shouldHaveDrawer = (PlatformProvider.isMobile() || context.isCompact);
    return BlocProvider(
      create: (context) => getIt<DashboardBloc>()
        ..add(const DashboardEvent.base(BaseEvent.loadPage())),
      child: Scaffold(
        drawer: shouldHaveDrawer
            ? AniSidebar(
                onClick: (destination) {
                  context.read<NavigationCubit>().navigateTo(
                        destination,
                      );
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
                if (state is NavigateToNavigation) {
                  final arguments = state.arguments as int?;
                  GoRouter.of(context).pushNamed(
                    AnimeDetailRoute().name,
                    pathParameters: {'id': arguments.toString()},
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
          child: BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
              switch (state) {
                case Initial():
                  return const Text('Initial State');
                case Loading():
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
}
