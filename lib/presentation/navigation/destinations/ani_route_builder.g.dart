// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ani_route_builder.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $dashboardRoute,
      $animeSubRoute,
      $mangaSubRoute,
      $characterSubRoute,
      $errorRoute,
    ];

RouteBase get $dashboardRoute => GoRouteData.$route(
      path: '/',
      factory: $DashboardRouteExtension._fromState,
    );

extension $DashboardRouteExtension on DashboardRoute {
  static DashboardRoute _fromState(GoRouterState state) => DashboardRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $animeSubRoute => GoRouteData.$route(
      path: '/anime',
      factory: $AnimeSubRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'detail/:id',
          factory: $AnimeDetailRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'favorite/:id',
          factory: $FavoriteDetailRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'character',
          factory: $CharacterDetailRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'most-favorites',
          factory: $MostFavoriteRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'top',
          factory: $TopAnimeRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'seasonal',
          factory: $SeasonalAnimeRouteExtension._fromState,
        ),
      ],
    );

extension $AnimeSubRouteExtension on AnimeSubRoute {
  static AnimeSubRoute _fromState(GoRouterState state) => AnimeSubRoute();

  String get location => GoRouteData.$location(
        '/anime',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AnimeDetailRouteExtension on AnimeDetailRoute {
  static AnimeDetailRoute _fromState(GoRouterState state) => AnimeDetailRoute(
        id: int.parse(state.pathParameters['id']!)!,
      );

  String get location => GoRouteData.$location(
        '/anime/detail/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FavoriteDetailRouteExtension on FavoriteDetailRoute {
  static FavoriteDetailRoute _fromState(GoRouterState state) =>
      FavoriteDetailRoute(
        id: int.parse(state.pathParameters['id']!)!,
      );

  String get location => GoRouteData.$location(
        '/anime/favorite/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CharacterDetailRouteExtension on CharacterDetailRoute {
  static CharacterDetailRoute _fromState(GoRouterState state) =>
      CharacterDetailRoute(
        id: int.parse(state.uri.queryParameters['id']!)!,
      );

  String get location => GoRouteData.$location(
        '/anime/character',
        queryParams: {
          'id': id.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MostFavoriteRouteExtension on MostFavoriteRoute {
  static MostFavoriteRoute _fromState(GoRouterState state) =>
      MostFavoriteRoute();

  String get location => GoRouteData.$location(
        '/anime/most-favorites',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TopAnimeRouteExtension on TopAnimeRoute {
  static TopAnimeRoute _fromState(GoRouterState state) => TopAnimeRoute();

  String get location => GoRouteData.$location(
        '/anime/top',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SeasonalAnimeRouteExtension on SeasonalAnimeRoute {
  static SeasonalAnimeRoute _fromState(GoRouterState state) =>
      SeasonalAnimeRoute();

  String get location => GoRouteData.$location(
        '/anime/seasonal',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $mangaSubRoute => GoRouteData.$route(
      path: '/manga',
      factory: $MangaSubRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'top',
          factory: $TopMangaRouteExtension._fromState,
        ),
      ],
    );

extension $MangaSubRouteExtension on MangaSubRoute {
  static MangaSubRoute _fromState(GoRouterState state) => MangaSubRoute();

  String get location => GoRouteData.$location(
        '/manga',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TopMangaRouteExtension on TopMangaRoute {
  static TopMangaRoute _fromState(GoRouterState state) => TopMangaRoute();

  String get location => GoRouteData.$location(
        '/manga/top',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $characterSubRoute => GoRouteData.$route(
      path: '/character',
      factory: $CharacterSubRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'top',
          factory: $TopCharacterRouteExtension._fromState,
        ),
      ],
    );

extension $CharacterSubRouteExtension on CharacterSubRoute {
  static CharacterSubRoute _fromState(GoRouterState state) =>
      CharacterSubRoute();

  String get location => GoRouteData.$location(
        '/character',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TopCharacterRouteExtension on TopCharacterRoute {
  static TopCharacterRoute _fromState(GoRouterState state) =>
      const TopCharacterRoute();

  String get location => GoRouteData.$location(
        '/character/top',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $errorRoute => GoRouteData.$route(
      path: '/error',
      factory: $ErrorRouteExtension._fromState,
    );

extension $ErrorRouteExtension on ErrorRoute {
  static ErrorRoute _fromState(GoRouterState state) => ErrorRoute(
        error: state.uri.queryParameters['error'],
      );

  String get location => GoRouteData.$location(
        '/error',
        queryParams: {
          if (error != null) 'error': error,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
