import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/base/cubit/navigation_cubit.dart';
import '../../../core/components/ui_constants.dart';
import '../../../domain/model/common/recommendation.dart';
import '../../components/media_item_tile.dart';
import '../../navigation/destinations/ani_route_builder.dart';
import '../dashboard/component/section_heading.dart';

class RecommendationSection extends StatelessWidget {
  final List<Recommendation> animes;
  final String title;
  const RecommendationSection({
    super.key,
    required this.title,
    required this.animes,
  });

  @override
  Widget build(BuildContext context) {
    final double aspectRatio = UiConstantsProvider.getImageItemWidth(context) /
        UiConstantsProvider.getImageItemHeight(context);
    final double crossAxisSpacing = 8;
    final double mainAxisSpacing = 8;
    final EdgeInsets padding = const EdgeInsets.all(8.0);
    final double itemWidth = UiConstantsProvider.getImageItemWidth(context);
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          SectionHeading(title: title),
          GridView.builder(
            padding: padding,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: animes.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: itemWidth,
              mainAxisSpacing: mainAxisSpacing,
              crossAxisSpacing: crossAxisSpacing,
              childAspectRatio: aspectRatio,
            ),
            itemBuilder: (context, index) {
              final anime = animes[index];
              return MediaItemTile(
                id: anime.malId,
                title: anime.title,
                imageUrl: anime.images.jpg?.largeImageUrl!,
                leftBadgeValue: '',
                isRankedTile: true,
                rating: null,
                isLeftBadgeVisible: false,
                isRightBadgeVisible: false,
                onTap: (id) {
                  context.read<NavigationCubit>().navigateTo(
                        AnimeDetailRoute(id: id),
                      );
                },
                onHover: (isHovering) {},
              );
            },
          ),
        ],
      ),
    );
  }
}
