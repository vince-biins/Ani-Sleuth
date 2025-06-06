import 'package:ani_sleuth/core/components/ui_constants.dart';
import 'package:ani_sleuth/domain/model/enum/entry_type.dart';
import 'package:ani_sleuth/presentation/navigation/destinations/ani_route_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AniSidebar extends StatelessWidget {
  final Function(GoRouteData) onClick;
  AniSidebar({super.key, required this.onClick});

  final List<
      ({
        String title,
        AnimeRoute destination,
      })> expandedTileTitles = [
    (
      title: 'Top Anime',
      destination: TopAnimeRoute(),
    ),
    (
      title: 'Seasonal Anime',
      destination: SeasonalAnimeRoute(),
    ),
    (
      title: 'Most Favorites',
      destination: MostFavoriteRoute(),
    ),
  ];
  late final List<
      ({
        String title,
        bool isExpanded,
        List<
            ({
              String title,
              AnimeRoute destination,
            })> expandedTitles,
        GoRouteData destination,
      })> tiles = [
    (
      title: 'Anime',
      isExpanded: true,
      expandedTitles: expandedTileTitles,
      destination: AnimeSubRoute(),
    ),
    (
      title: 'Manga',
      isExpanded: false,
      expandedTitles: [],
      destination: MangaSubRoute(),
    ),
    (
      title: 'Character',
      isExpanded: false,
      expandedTitles: [],
      destination: CharacterSubRoute(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(UiConstantsProvider.containerBorderRadius),
          bottomRight:
              Radius.circular(UiConstantsProvider.containerBorderRadius),
        ),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: tiles.map((tileItem) {
          if (tileItem.isExpanded) {
            return ExpansionTile(
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              enableFeedback: false,
              iconColor: Colors.white,
              shape: Border(),
              title: Text(
                tileItem.title,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              children: tileItem.expandedTitles
                  .map(
                    (item) => ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.only(left: 32.0, right: 0.0),
                      minVerticalPadding: 1,
                      onTap: () {
                        onClick(item.destination);
                      },
                      title: Text(
                        item.title,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  )
                  .toList(),
            );
          } else {
            return ListTile(
              onTap: () {
                onClick(tileItem.destination);
              },
              title: Text(
                tileItem.title,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            );
          }
        }).toList(),
      ),
    );
  }
}
