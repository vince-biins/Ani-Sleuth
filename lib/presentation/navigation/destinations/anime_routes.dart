import 'package:ani_sleuth/presentation/navigation/destinations/nav_destinations.dart';

sealed class AnimeRoute extends NavDestinations {
  final String subPath;
  final String subName;

  const AnimeRoute(this.subPath, this.subName);

  @override
  String get path => '/anime$subPath';

  @override
  String get name => 'anime$subName';
}

class AnimeDetailRoute extends AnimeRoute {
  static const param = 'id';
  const AnimeDetailRoute() : super('/detail/:id', '-detail');
}

class FavoriteAnimeRoute extends AnimeRoute {
  static const param = 'id';
  const FavoriteAnimeRoute() : super('/favorite/:id', '-favorite');
}

class TopAnimeRoute extends AnimeRoute {
  static const param = 'id';
  const TopAnimeRoute() : super('/top/:id', '-top');
}

class SeasonalAnimeRoute extends AnimeRoute {
  static const param = 'id';
  const SeasonalAnimeRoute() : super('/seasonal/:id', '-seasonal');
}
