import 'package:ani_sleuth/core/components/ui_constants.dart';
import 'package:ani_sleuth/core/util.dart';
import 'package:ani_sleuth/domain/model/anime/entity/top_anime.dart';
import 'package:ani_sleuth/presentation/components/media_item_tile.dart';
import 'package:ani_sleuth/presentation/page/dashboard/component/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridSection extends StatelessWidget {
  final List<TopAnime> topAnime;
  final VoidCallback onClickMore;
  final Function(int) onTap;
  final Function(bool) onHover;
  const GridSection({
    super.key,
    required this.topAnime,
    required this.onClickMore,
    required this.onTap,
    required this.onHover,
  });

  @override
  Widget build(BuildContext context) {
    final sectionHeadingHeight = 56.0;

    final double maxCrossAxisExtent =
        UiConstantsProvider.getImageItemWidth(context);
    final double aspectRation = UiConstantsProvider.getImageItemWidth(context) /
        UiConstantsProvider.getImageItemHeight(context);
    final double mainAxisSpacing = 16; // spacing between rows
    final double crossAxisSpacing = 16; // spacing between columns
    final EdgeInsets padding = const EdgeInsets.all(8.0);
    final int itemCount = topAnime.length;
    final double itemWidth = UiConstantsProvider.getImageItemWidth(context);
    final double itemHeight = UiConstantsProvider.getImageItemHeight(context);
    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            height: sectionHeadingHeight,
            child: SectionHeading(title: 'Top Anime'),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              final double availableWidth =
                  constraints.maxWidth - padding.left - padding.right;
              final int crossAxisCount =
                  (availableWidth / (maxCrossAxisExtent + crossAxisSpacing))
                      .floor()
                      .clamp(1, itemCount);

              return GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap:
                    true, // 👈 this avoids needing to manually compute height
                padding: padding,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: itemWidth + crossAxisSpacing,
                  mainAxisSpacing: mainAxisSpacing,
                  crossAxisSpacing: crossAxisSpacing,
                  childAspectRatio: aspectRation,
                ),
                itemCount: topAnime.length,
                itemBuilder: (context, index) {
                  final item = topAnime[index];
                  return MediaItemTile(
                    id: item.malId,
                    title: item.title,
                    imageUrl: item.imageUrl,
                    leftBadgeValue: item.rank,
                    isRankedTile: true,
                    rating: item.score,
                    onTap: onTap,
                    onHover: onHover,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
