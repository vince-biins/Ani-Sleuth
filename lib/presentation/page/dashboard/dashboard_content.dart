import 'package:ani_sleuth/application/base/cubit/navigation_cubit.dart';
import 'package:ani_sleuth/application/dashboard/bloc/dashboard_bloc.dart';
import 'package:ani_sleuth/presentation/components/media_item_tile.dart';
import 'package:ani_sleuth/presentation/page/dashboard/component/grid_section.dart';
import 'package:ani_sleuth/presentation/page/dashboard/component/favorite_item.dart';
import 'package:ani_sleuth/presentation/page/dashboard/component/header_carousel_section.dart';
import 'package:ani_sleuth/presentation/page/dashboard/component/seasonal_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visibility_detector/visibility_detector.dart';

class DashboardContent extends StatelessWidget {
  final DashboardData data;
  const DashboardContent({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeaderCarouselSection(favoriteAnime: data.mostFavoriteAnime),
            SeasonalSection(
              seasonalAnime: data.seasonalAnime,
              onTap: (id) {
                context
                    .read<NavigationCubit>()
                    .navigateTo('/details', arguments: id);
              },
              onHover: (isHovered) {},
              onClickMore: () {},
            ),
            GridSection(
              title: 'Top Anime',
              items: data.topAnime,
              onTap: (id) {
                context
                    .read<NavigationCubit>()
                    .navigateTo('/details', arguments: id);
              },
              onHover: (isHovered) {},
              onClickMore: () {},
              itemBuilder: (context, anime) => MediaItemTile(
                id: anime.malId,
                title: anime.title,
                imageUrl: anime.imageUrl,
                leftBadgeValue: anime.rank,
                isRankedTile: true,
                rating: anime.score,
                onTap: (id) {},
                onHover: (isHovering) {},
              ),
            ),
            VisibilityDetector(
              key: const Key('top_characters_section'),
              onVisibilityChanged: (visibilityInfo) {
                if (visibilityInfo.visibleFraction > 0 &&
                    data.topCharacter.isEmpty) {
                  context
                      .read<DashboardBloc>()
                      .add(DashboardEvent.fetchedApiCall());
                }
              },
              child: GridSection(
                title: 'Top Characters',
                items: data.topCharacter,
                onTap: (id) {
                  context
                      .read<NavigationCubit>()
                      .navigateTo('/details', arguments: id);
                },
                onHover: (isHovered) {},
                onClickMore: () {},
                itemBuilder: (context, character) => MediaItemTile(
                  id: character.malId,
                  title: character.name,
                  imageUrl: character.images,
                  leftBadgeValue: character.rank,
                  isRankedTile: true,
                  rating: character.favorites?.toDouble(),
                  onTap: (id) {},
                  onHover: (isHovering) {},
                  icon: Icons.info_rounded,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
