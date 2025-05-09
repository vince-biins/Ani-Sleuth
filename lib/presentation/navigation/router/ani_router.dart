import 'package:ani_sleuth/presentation/navigation/destinations/anime_routes.dart';
import 'package:ani_sleuth/presentation/navigation/destinations/nav_destinations.dart';
import 'package:ani_sleuth/presentation/page/dashboard/dashboard_page.dart';
import 'package:ani_sleuth/presentation/page/detail/detail_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: const DashboardRoute().path,
  routes: [
    GoRoute(
      path: const DashboardRoute().path,
      name: const DashboardRoute().name,
      builder: (context, state) => const DashboardPage(),
    ),
    GoRoute(
      path: AnimeDetailRoute().path, // /anime/:id
      name: AnimeDetailRoute().name,
      builder: (context, state) {
        final id =
            int.tryParse(state.pathParameters[AnimeDetailRoute.param]!) ?? 0;
        return DetailPage(animeId: id);
      },
    ),
  ],
);
