import 'package:ani_sleuth/application/detail/anime/character_param.dart';
import 'package:ani_sleuth/domain/model/character/entity/anime_character.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/base/cubit/navigation_cubit.dart';
import '../../../core/components/ui_constants.dart';
import '../../components/media_item_tile.dart';
import '../../navigation/destinations/ani_route_builder.dart';
import '../dashboard/component/section_heading.dart';

class CharacterSection extends StatelessWidget {
  final CharacterParam character;
  final String title;
  const CharacterSection({
    super.key,
    required this.title,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          SectionHeading(title: title),
          if (character.mainCharacters.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(
                left: UiConstantsProvider.containerPadding,
              ),
              child: _buildGridSection(
                context: context,
                char: character.mainCharacters,
                sectionTitle: 'Main',
              ),
            ),
          if (character.supportingCharacters.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(
                left: UiConstantsProvider.containerPadding,
              ),
              child: _buildGridSection(
                context: context,
                char: character.supportingCharacters,
                sectionTitle: 'Supporting',
              ),
            ),
          if (character.otherCharacters.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(
                left: UiConstantsProvider.containerPadding,
              ),
              child: _buildGridSection(
                context: context,
                char: character.otherCharacters,
                sectionTitle: 'Others',
              ),
            ),
        ],
      ),
    );
  }

  _buildGridSection({
    required BuildContext context,
    required List<AnimeCharacter> char,
    required String sectionTitle,
  }) {
    final double aspectRatio = UiConstantsProvider.getImageItemWidth(context) /
        UiConstantsProvider.getImageItemHeight(context);
    final double crossAxisSpacing = 8;
    final double mainAxisSpacing = 8;
    final EdgeInsets padding = const EdgeInsets.all(8.0);
    final double itemWidth = UiConstantsProvider.getImageItemWidth(context);
    return Column(
      children: [
        SectionHeading(title: sectionTitle),
        GridView.builder(
          padding: padding,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: char.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: itemWidth,
            mainAxisSpacing: mainAxisSpacing,
            crossAxisSpacing: crossAxisSpacing,
            childAspectRatio: aspectRatio,
          ),
          itemBuilder: (context, index) {
            final item = char[index];
            return MediaItemTile(
              id: item.malId,
              title: item.name,
              imageUrl: item.images,
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
    );
  }
}
