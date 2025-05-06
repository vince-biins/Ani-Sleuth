import 'package:ani_sleuth/core/components/ui_constants.dart';
import 'package:flutter/material.dart';

class AniSidebar extends StatelessWidget {
  final Function(String) onClick;
  AniSidebar({super.key, required this.onClick});

  final List<({String title, String destination})> expandedTileTitles = [
    (title: 'Top Anime', destination: '/anime/top'),
    (title: 'Seasonal Anime', destination: '/anime/seasonal'),
    (title: 'Most Favorites', destination: '/anime/most-favorites'),
  ];
  late final List<
      ({
        String title,
        bool isExpanded,
        List<({String title, String destination})> expandedTitles,
        String destination
      })> tiles = [
    (
      title: 'Anime',
      isExpanded: true,
      expandedTitles: expandedTileTitles,
      destination: '/anime'
    ),
    (
      title: 'Manga',
      isExpanded: false,
      expandedTitles: [],
      destination: '/manga'
    ),
    (
      title: 'Character',
      isExpanded: false,
      expandedTitles: [],
      destination: '/character'
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
