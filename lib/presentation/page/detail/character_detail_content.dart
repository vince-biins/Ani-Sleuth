import 'package:ani_sleuth/application/detail/character/character_bloc.dart';
import 'package:ani_sleuth/core/components/ui_constants.dart';
import 'package:ani_sleuth/core/util.dart';
import 'package:ani_sleuth/domain/util/utils.dart';
import 'package:flutter/material.dart';

import '../../components/ani_image_network.dart';

class CharacterDetailContent extends StatelessWidget {
  final CharacterData data;
  const CharacterDetailContent({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: UiConstantsProvider.containerMargin * 2,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: UiConstantsProvider.containerPadding,
      ),
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.only(top: UiConstantsProvider.spacing),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: context.isCompact ? 150 : 250,
                    height: context.isCompact ? 150 : 250,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 1.5,
                      ),
                    ),
                    child: ClipOval(
                      child: AniImageNetwork(
                        src: data.character!.images.toString(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: UiConstantsProvider.spacing,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Text(
                            data.character?.name ?? 'Unknown',
                            style: theme.textTheme.displaySmall?.copyWith(
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        if (data.character?.nameKanji != null)
                          SizedBox(
                            child: Text(
                              data.character!.nameKanji!,
                              style: theme.textTheme.titleMedium?.copyWith(
                                color: theme.colorScheme.primary,
                              ),
                            ),
                          ),
                        if (data.character?.favorites != null &&
                            data.character!.favorites! > 0)
                          SizedBox(
                            child: Row(
                              spacing: UiConstantsProvider.spacing - 4,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red[400],
                                ),
                                SizedBox(
                                  child: Text(
                                    formatWithCommas(
                                      data.character!.favorites!,
                                    ),
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: Colors.red[100],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: UiConstantsProvider.spacing * 2,
            ),
          ),
          //ABOUT
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              vertical: UiConstantsProvider.spacing,
            ),
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                child: Text(
                  data.character?.about ?? 'N/A',
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ),
          ),

          SliverFillRemaining(
            hasScrollBody: false,
            child: SizedBox(
              height: 80,
            ),
          ),
        ],
      ),
    );
  }
}
