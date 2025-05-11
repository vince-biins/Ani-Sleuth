part of 'ani_route_builder.dart';

@immutable
class AnimeDetailRoute extends AnimeRoute {
  final int id;

  AnimeDetailRoute({required this.id});
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      DetailPage(animeId: id);
}

@immutable
class FavoriteDetailRoute extends AnimeRoute {
  final int id;

  FavoriteDetailRoute({required this.id});
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      DetailPage(animeId: id);
}

@immutable
class MostFavoriteRoute extends AnimeRoute {
  MostFavoriteRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) => DetailPage();
}

@immutable
class CharacterDetailRoute extends AnimeRoute {
  final int id;

  CharacterDetailRoute({required this.id});
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      DetailPage(animeId: id);
}

@immutable
class TopAnimeRoute extends AnimeRoute {
  TopAnimeRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) => DetailPage();
}

@immutable
class SeasonalAnimeRoute extends AnimeRoute {
  SeasonalAnimeRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) => DetailPage();
}
