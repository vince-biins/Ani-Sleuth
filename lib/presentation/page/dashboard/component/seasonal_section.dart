import 'package:ani_sleuth/core/components/ui_constants.dart';
import 'package:ani_sleuth/domain/model/anime/entity/seasonal_anime.dart';
import 'package:ani_sleuth/presentation/components/media_item_tile.dart';
import 'package:ani_sleuth/presentation/page/dashboard/component/section_heading.dart';
import 'package:flutter/material.dart';

class SeasonalSection extends StatelessWidget {
  final List<SeasonalAnime> seasonalAnime;
  final VoidCallback onClickMore;
  final Function(int) onTap;
  final Function(bool) onHover;
  const SeasonalSection({
    super.key,
    required this.seasonalAnime,
    required this.onTap,
    required this.onHover,
    required this.onClickMore,
  });

  @override
  Widget build(BuildContext context) {
    final sectionHeadingHeight = 56.0;
    return Padding(
      padding: const EdgeInsets.all(UiConstantsProvider.containerPadding),
      child: SizedBox(
        height: UiConstantsProvider.getImageItemHeight(context) +
            sectionHeadingHeight,
        child: Column(
          children: [
            SizedBox(
              height: sectionHeadingHeight,
              child: SectionHeading(
                title: 'Seasonal Anime',
                onClickMore: onClickMore,
              ),
            ),
            SizedBox(
              height: UiConstantsProvider.getImageItemHeight(context),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: seasonalAnime.length,
                itemBuilder: (context, index) {
                  final item = seasonalAnime[index];
                  return Padding(
                    padding: const EdgeInsets.all(
                      UiConstantsProvider.containerPadding,
                    ),
                    child: SizedBox(
                      width: UiConstantsProvider.getImageItemWidth(context),
                      child: MediaItemTile(
                        id: item.malId,
                        title: item.title,
                        imageUrl: item.imageUrl,
                        leftBadgeValue: item.episodes,
                        isRankedTile: false,
                        rating: item.score,
                        onTap: onTap,
                        onHover: onHover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
