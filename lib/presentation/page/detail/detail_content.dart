import 'package:ani_sleuth/application/detail/bloc/detail_bloc.dart';
import 'package:ani_sleuth/core/util.dart';
import 'package:ani_sleuth/presentation/page/detail/component/episode_section.dart';
import 'package:ani_sleuth/presentation/page/detail/component/header_detail_section.dart';
import 'package:flutter/material.dart';

import '../../../core/components/ui_constants.dart';

class DetailContent extends StatelessWidget {
  final DetailData data;
  const DetailContent({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    final paddingMultiplier = context.isCompact ? 2 : 16;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal:
                  UiConstantsProvider.containerPadding * paddingMultiplier,
            ),
            child: HeaderDetailSection(data: data.anime!),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal:
                UiConstantsProvider.containerPadding * paddingMultiplier,
          ),
          sliver: EpisodeSection(episodes: data.episides),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: SizedBox(),
        ),
      ],
    );
  }
}
