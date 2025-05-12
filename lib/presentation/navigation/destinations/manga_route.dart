part of 'ani_route_builder.dart';
//
// ############ MANGA ROUTES ###################
//

@immutable
class TopMangaRoute extends MangaRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DetailPage(
      animeId: 000,
      pageTitle: 'Top Manga',
    );
  }
}
