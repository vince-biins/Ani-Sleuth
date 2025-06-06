import 'package:ani_sleuth/core/components/ui_constants.dart';
import 'package:ani_sleuth/core/util.dart';
import 'package:ani_sleuth/domain/model/anime/entity/episode.dart';
import 'package:flutter/material.dart';

class EpisodeSection extends StatelessWidget {
  final List<Episode> episodes;
  const EpisodeSection({super.key, required this.episodes});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: UiConstantsProvider.containerPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Text(
                'Episodes',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
              ),
            ),
            Divider(),
            const SizedBox(
              height: UiConstantsProvider.spacing,
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: episodes.length,
                physics: const AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return EpisodeItemTile(episode: episodes[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EpisodeItemTile extends StatelessWidget {
  final Episode episode;
  const EpisodeItemTile({super.key, required this.episode});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).scaffoldBackgroundColor;
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: UiConstantsProvider.containerPadding,
        horizontal: UiConstantsProvider.containerPadding * 2,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: UiConstantsProvider.containerPadding / 2,
      ),
      width: context.screenWidth,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: Colors.blueGrey,
        ),
        borderRadius:
            BorderRadius.circular(UiConstantsProvider.containerBorderRadius),
      ),
      child: Row(
        children: [
          SizedBox(
            child: Text(
              episode.malId.toString(),
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
          const SizedBox(
            width: UiConstantsProvider.spacing * 2,
          ),
          Expanded(
            flex: 3,
            child: SizedBox(
              child: Text(
                episode.title,
                maxLines: 1,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      letterSpacing: 1.2,
                      fontStyle: FontStyle.italic,
                      overflow: TextOverflow.ellipsis,
                    ),
              ),
            ),
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (episode.filler)
                  _tagTile(
                    context: context,
                    title: 'Filler',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer,
                        ),
                    containerColor:
                        Theme.of(context).colorScheme.secondaryContainer,
                  ),
                if (episode.recap)
                  _tagTile(
                    context: context,
                    title: 'Recap',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color:
                              Theme.of(context).colorScheme.onTertiaryContainer,
                        ),
                    containerColor:
                        Theme.of(context).colorScheme.tertiaryContainer,
                  ),
                const SizedBox(width: UiConstantsProvider.spacing),
                SizedBox(
                  child: Text(
                    episode.score.toString(),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.blueGrey,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _tagTile({
    required BuildContext context,
    required String title,
    required TextStyle? style,
    required Color containerColor,
  }) {
    return Container(
      margin: const EdgeInsets.only(
        right: UiConstantsProvider.containerPadding,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: UiConstantsProvider.containerPadding / 2,
      ),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(
          UiConstantsProvider.containerBorderRadius / 2,
        ),
        border: Border.all(
          color: Colors.black45,
          width: 2,
        ),
      ),
      child: Text(
        title,
        style: style,
      ),
    );
  }
}
