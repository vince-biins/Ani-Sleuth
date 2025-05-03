import 'package:ani_sleuth/core/components/ui_constants.dart';
import 'package:ani_sleuth/domain/model/anime/entity/seasonal_anime.dart';
import 'package:ani_sleuth/presentation/components/media_item_tile.dart';
import 'package:flutter/material.dart';

class SeasonalSection extends StatelessWidget {
  final List<SeasonalAnime> seasonalAnime;
  final Function(int) onTap;
  final Function(bool) onHover;
  const SeasonalSection({
    super.key,
    required this.seasonalAnime,
    required this.onTap,
    required this.onHover,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: imageItemHeight,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: seasonalAnime.length,
        itemBuilder: (context, index) {
          final item = seasonalAnime[index];
          return MediaItemTile(
            id: item.malId,
            title: item.title,
            imageUrl: item.imageUrl,
            leftBadgeValue: item.episodes,
            isRankedTile: false,
            rating: item.score,
            onTap: onTap,
            onHover: onHover,
          );
        },
      ),
    );
  }
}
