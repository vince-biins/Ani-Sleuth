import 'package:ani_sleuth/core/components/ui_constants.dart';
import 'package:ani_sleuth/core/util.dart';
import 'package:ani_sleuth/domain/model/anime/entity/full_anime.dart';
import 'package:ani_sleuth/presentation/components/ani_image_network.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  final FullAnime favoriteAnime;
  const HeaderSection({super.key, required this.favoriteAnime});

  @override
  Widget build(BuildContext context) {
    final vignetteColor = Theme.of(context).scaffoldBackgroundColor;
    return SizedBox(
      height: context.screenHeight,
      width: context.screenWidth,
      child: Stack(
        children: [
          // Background Image
          SizedBox(
            height: context.screenHeight,
            width: context.screenWidth,
            child: AniImageNetwork(
              src: favoriteAnime.trailer?.images?.maximumImageUrl ?? '',
              fit: BoxFit.cover,
            ),
          ),
          // Left Shadow
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            width: context.screenWidth * 0.6,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    vignetteColor,
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
            height: context.screenHeight * 0.3,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    vignetteColor,
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
            width: context.screenWidth * 0.3,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.transparent, vignetteColor],
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
            height: context.screenHeight,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.transparent, vignetteColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: UiConstantsProvider.containerPadding * 6,
            ),
            child: SizedBox(
              width: context.screenWidth * 0.4,
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
                      borderRadius: BorderRadius.circular(
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
                  SizedBox(
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
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .tertiaryContainer,
                                  ),
                        ),
                      ],
                    ),
                  ),

                  ///DESCRIPTION
                  SizedBox(
                    child: Text(
                      favoriteAnime.synopsis ??
                          favoriteAnime.background ??
                          'No Data',
                      style: Theme.of(context).textTheme.bodySmall,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),

                  SizedBox(
                    child: Row(
                      children: [
                        /// Ratings
                        SizedBox(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Theme.of(context).colorScheme.secondary,
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

                  SizedBox(
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Show Detail >',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          // Filter
        ],
      ),
    );
  }
}
