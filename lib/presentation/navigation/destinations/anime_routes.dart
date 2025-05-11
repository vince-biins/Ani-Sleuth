import 'package:ani_sleuth/presentation/navigation/destinations/nav_destinations.dart';
import 'package:ani_sleuth/presentation/page/detail/detail_page.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

sealed class AnimeRoute extends NavRouteWithParam {
  final String subPath;
  final String subName;

  const AnimeRoute(this.subPath, this.subName);

  @override
  String get path => '/anime$subPath';

  @override
  String get name => 'anime$subName';
}

class AnimeDetailRoute extends AnimeRoute {
  @override
  String get paramName => ':id';
  const AnimeDetailRoute() : super('/detail/:id', '-detail');
}

class FavoriteAnimeRoute extends AnimeRoute {
  @override
  String get paramName => ':id';
  const FavoriteAnimeRoute() : super('/favorite/:id', '-favorite');
}

class TopAnimeRoute extends AnimeRoute {
  @override
  String get paramName => ':id';
  const TopAnimeRoute() : super('/top/:id', '-top');
}

class SeasonalAnimeRoute extends AnimeRoute {
  @override
  String get paramName => ':id';
  const SeasonalAnimeRoute() : super('/seasonal/:id', '-seasonal');
}

class AnimeDetailRoute2 extends GoRouteData {
  final int id;

  AnimeDetailRoute2({required this.id});
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DetailPage(animeId: id);
  }
}

class FavoriteDetailRoute extends GoRouteData {
  final int id;

  FavoriteDetailRoute({required this.id});
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DetailPage(animeId: id);
  }
}

class TopCharacterRoute extends GoRouteData {
  final int id;

  TopCharacterRoute({required this.id});
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DetailPage(animeId: id);
  }
}
