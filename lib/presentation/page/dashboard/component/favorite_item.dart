import 'package:ani_sleuth/core/components/ui_constants.dart';
import 'package:ani_sleuth/core/util.dart';
import 'package:ani_sleuth/domain/model/anime/entity/full_anime.dart';
import 'package:ani_sleuth/presentation/components/ani_image_network.dart';
import 'package:flutter/material.dart';

import '../../../../core/platform_provider.dart';

class FavoriteItem extends StatelessWidget {
  final FullAnime favoriteAnime;
  final double height;
  final Function(int) onClicked;
  const FavoriteItem({
    super.key,
    required this.favoriteAnime,
    required this.height,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    final isCompact = PlatformProvider.isMobile() || context.isCompact;
    final double contentWidth =
        isCompact ? context.screenWidth : context.screenWidth * 0.4;
    final vignetteColor = Theme.of(context).scaffoldBackgroundColor;
    final src = favoriteAnime.malId == 11061
        ? favoriteAnime.trailer?.images?.largeImageUrl
        : favoriteAnime.trailer?.images?.maximumImageUrl;
    return SizedBox(
      height: height,
      width: context.screenWidth,
      child: Stack(
        children: [
          // Background Image
          SizedBox(
            height: height,
            width: context.screenWidth,
            child: AniImageNetwork(
              src: src ?? '',
              fit: BoxFit.cover,
              height: height,
              width: context.screenWidth,
            ),
          ),

          _addShadowFourSides(
            color: vignetteColor,
            height: height,
            width: context.screenWidth,
          ),

          Padding(
            padding: EdgeInsets.only(
              left: isCompact ? 0.0 : UiConstantsProvider.containerPadding * 6,
            ),
            child: SizedBox(
              width: contentWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: UiConstantsProvider.spacing,
                children: [
                  Container(
                    padding: const EdgeInsets.all(
                      UiConstantsProvider.containerPadding,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: isCompact
                          ? BorderRadius.only(
                              topRight: Radius.circular(
                                UiConstantsProvider.containerBorderRadius,
                              ),
                              bottomRight: Radius.circular(
                                UiConstantsProvider.containerBorderRadius,
                              ),
                            )
                          : BorderRadius.circular(
                              UiConstantsProvider.containerBorderRadius,
                            ),
                      gradient: LinearGradient(
                        colors: [
                          Theme.of(context).colorScheme.primary,
                          Theme.of(context).colorScheme.secondary,
                        ],
                      ),
                    ),
                    child: Text(
                      '${favoriteAnime.favoriteRank} Most Favorite Anime',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),

                  /// TITLE
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: UiConstantsProvider.containerPadding,
                    ),
                    child: SizedBox(
                      child: Column(
                        spacing: 4.0,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            favoriteAnime.title,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Text(
                            '( ${favoriteAnime.jTitle} )',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .tertiaryContainer,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///DESCRIPTION
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: UiConstantsProvider.containerPadding,
                    ),
                    child: SizedBox(
                      child: Text(
                        favoriteAnime.synopsis ??
                            favoriteAnime.background ??
                            'No Data',
                        style: Theme.of(context).textTheme.bodySmall,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: UiConstantsProvider.containerPadding,
                    ),
                    child: SizedBox(
                      child: Row(
                        children: [
                          /// Ratings
                          SizedBox(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  size: 32,
                                ),
                                Text(
                                  favoriteAnime.score.toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: UiConstantsProvider.spacing,
                          ),

                          /// Scored by
                          SizedBox(
                            child: Text(
                              '( ${favoriteAnime.scoredBy.toString()} )',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(),
                            ),
                          ),

                          const SizedBox(
                            width: 16.0,
                          ),

                          ///Favorites
                          SizedBox(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Theme.of(context).colorScheme.error,
                                  size: 32,
                                ),
                                Text(
                                  favoriteAnime.score.toString(),
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: UiConstantsProvider.containerPadding,
                    ),
                    child: SizedBox(
                      child: Row(
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              onClicked(favoriteAnime.malId);
                            },
                            child: Text(
                              'Show Details',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 2,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Filter
        ],
      ),
    );
  }

  _addShadowFourSides({
    required double width,
    required double height,
    required Color color,
  }) {
    return Stack(
      children: [
        // Left Shadow
        Positioned(
          left: 0,
          top: 0,
          bottom: 0,
          width: width * 0.6,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  color,
                  Colors.transparent,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
        ),
        // Top Shadow
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: height * 0.3,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  color,
                  Colors.transparent,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        // Right Shadow
        Positioned(
          right: 0,
          top: 0,
          bottom: 0,
          width: width * 0.3,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, color],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
        ),
        // Bottom Shadow
        Positioned(
          bottom:
              -5, // to prevent the slight appearance of the image mot covered by the shadow
          left: 0,
          right: 0,
          height: height,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, color],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
