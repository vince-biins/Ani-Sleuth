import 'package:ani_sleuth/core/components/ui_constants.dart';
import 'package:ani_sleuth/core/util.dart';
import 'package:ani_sleuth/presentation/components/ani_image_network.dart';
import 'package:flutter/material.dart';

import '../../../../domain/model/anime/entity/full_anime.dart';

class HeaderDetailSection extends StatelessWidget {
  final FullAnime data;
  const HeaderDetailSection({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    final isCompact = context.isCompact;

    final detailContent = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _titleSection(context: context),
        SizedBox(height: UiConstantsProvider.spacing * 4),
        _synopsisSection(context: context),
      ],
    );

    final imageWidget = Container(
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(UiConstantsProvider.containerBorderRadius),
      ),
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(UiConstantsProvider.containerBorderRadius),
        child: AniImageNetwork(
          src: data.imageUrl ?? data.fullImage.jpg!.imageUrl!,
          width: UiConstantsProvider.getImageItemWidth(context),
          height: UiConstantsProvider.getImageItemHeight(context),
        ),
      ),
    );

    return ClipRRect(
      borderRadius:
          BorderRadius.circular(UiConstantsProvider.containerBorderRadius),
      child: Container(
        padding: const EdgeInsets.all(UiConstantsProvider.containerPadding * 4),
        color: Theme.of(context).colorScheme.surface,
        child: isCompact
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  imageWidget,
                  SizedBox(height: UiConstantsProvider.spacing * 4),
                  detailContent,
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  imageWidget,
                  SizedBox(width: UiConstantsProvider.spacing * 8),
                  Expanded(child: detailContent),
                ],
              ),
      ),
    );
  }

  Widget _synopsisSection({required BuildContext context}) {
    final synopsis = data.synopsis ?? 'No data.';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          child: Text(
            'Synopsis',
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(letterSpacing: 1.5, fontWeight: FontWeight.w500),
          ),
        ),
        Divider(
          thickness: 1.0,
          color: Colors.grey,
        ),
        SizedBox(
          child: Text(
            synopsis,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }

  Widget _titleSection({required BuildContext context}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // TITLE
        SizedBox(
          child: Text(
            data.title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.5,
                ),
          ),
        ),

        // Sub TITLE
        SizedBox(
          child: Text(
            '${data.jTitle}',
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  letterSpacing: 1.2,
                  color: Theme.of(context).colorScheme.outline,
                ),
          ),
        ),
      ],
    );
  }
}
