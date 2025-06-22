part of 'ani_route_builder.dart';

@immutable
class AnimeDetailRoute extends AnimeRoute {
  final int id;

  AnimeDetailRoute({required this.id});
  @override
  Widget build(BuildContext context, GoRouterState state) => DetailPage(
        animeId: id,
        pageTitle: 'Anime',
      );
}

@immutable
abstract class LibraryBaseRoute extends AnimeRoute {
  final String title;
  final String subtitle;
  final String imgUrl;

  LibraryBaseRoute({
    required this.title,
    required this.subtitle,
    required this.imgUrl,
  });
  @override
  Widget build(BuildContext context, GoRouterState state) => LibraryPage(
        header: (title: title, subtitle: subtitle, imgUrl: imgUrl),
      );
}

@immutable
class FavoriteDetailRoute extends AnimeRoute {
  final int id;

  FavoriteDetailRoute({required this.id});
  @override
  Widget build(BuildContext context, GoRouterState state) => DetailPage(
        animeId: id,
        pageTitle: 'Favorite',
      );
}

@immutable
class MostFavoriteRoute extends LibraryBaseRoute {
  MostFavoriteRoute()
      : super(
          title: 'Most Favorite',
          subtitle: 'All-Time Favorite Anime Picks by Viewers',
          imgUrl: '',
        );
}

@immutable
class CharacterDetailRoute extends AnimeRoute {
  final int id;

  CharacterDetailRoute({required this.id});
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      CharacterDetailPage(characterId: id, pageTitle: 'Character');
}

@immutable
class TopAnimeRoute extends LibraryBaseRoute {
  TopAnimeRoute()
      : super(
          title: 'Top Anime',
          subtitle: 'Top Ranked Anime of All Time',
          imgUrl: '',
        );
}

@immutable
class SeasonalAnimeRoute extends LibraryBaseRoute {
  SeasonalAnimeRoute()
      : super(
          title: 'Top Seasonal Anime',
          subtitle: 'Most Anticipated Anime this Season',
          imgUrl: '',
        );
}
