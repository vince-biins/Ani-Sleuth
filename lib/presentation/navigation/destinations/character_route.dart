part of 'ani_route_builder.dart';

//
// ############ CHARACTER ROUTES ###################
//

@immutable
class TopCharacterRoute extends GoRouteData {
  const TopCharacterRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) => DetailPage(
        animeId: 1111,
        pageTitle: 'Top Characters',
      );
}
