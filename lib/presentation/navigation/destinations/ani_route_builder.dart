import 'package:ani_sleuth/presentation/page/dashboard/dashboard_page.dart';
import 'package:ani_sleuth/presentation/page/detail/detail_page.dart';
import 'package:ani_sleuth/presentation/page/error_route_page.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

part 'ani_route_builder.g.dart';
part 'manga_route.dart';
part 'anime_route.dart';
part 'character_route.dart';

sealed class AnimeRoute extends GoRouteData {}

sealed class MangaRoute extends GoRouteData {}

sealed class CharacterRoute extends GoRouteData {}

@TypedGoRoute<DashboardRoute>(
  path: '/',
  routes: [],
)
@immutable
class DashboardRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DashboardPage();
  }
}

@TypedGoRoute<AnimeSubRoute>(
  path: '/anime',
  routes: [
    TypedGoRoute<AnimeDetailRoute>(path: 'detail/:id'),
    TypedGoRoute<FavoriteDetailRoute>(path: 'favorite/:id'),
    TypedGoRoute<CharacterDetailRoute>(path: 'character'),
    TypedGoRoute<MostFavoriteRoute>(path: 'most-favorites'),
    TypedGoRoute<TopAnimeRoute>(path: 'top'),
    TypedGoRoute<SeasonalAnimeRoute>(path: 'seasonal'),
  ],
)
class AnimeSubRoute extends AnimeRoute {}

@TypedGoRoute<MangaSubRoute>(path: '/manga', routes: [
  TypedGoRoute<TopMangaRoute>(path: 'top'),
])
class MangaSubRoute extends MangaRoute {}

@TypedGoRoute<CharacterSubRoute>(path: '/character', routes: [
  TypedGoRoute<TopCharacterRoute>(path: 'top'),
])
class CharacterSubRoute extends CharacterRoute {}

@TypedGoRoute<ErrorRoute>(path: '/error')
class ErrorRoute extends GoRouteData {
  ErrorRoute({this.error});
  final String? error;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ErrorPage(error: error);
  }
}
