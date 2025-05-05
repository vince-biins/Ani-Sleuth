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
              fit: BoxFit.fill,
            ),
          ),

          // Vignette Effect
          Positioned.fill(
            child: ShaderMask(
              blendMode: BlendMode.multiply,
              shaderCallback: (Rect bounds) {
                return RadialGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black,
                  ],
                  stops: const [0.4, 1.0],
                  center: Alignment.center,
                  radius: 1,
                  tileMode: TileMode.clamp,
                ).createShader(bounds);
              },
              child: const SizedBox(),
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
                  SizedBox.shrink(
                    child: Column(
                      spacing: 4.0,
                      children: [
                        Text(
                          favoriteAnime.title,
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Text(
                          '( ${favoriteAnime.jTitle} )',
                          style: Theme.of(context).textTheme.titleMedium,
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
                      style: Theme.of(context).textTheme.bodyMedium,
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
