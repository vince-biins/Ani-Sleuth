import 'package:ani_sleuth/domain/model/anime/entity/full_anime.dart';
import 'package:ani_sleuth/presentation/page/detail/component/header_detail_section.dart';
import 'package:flutter/material.dart';

import '../../../core/components/ui_constants.dart';

class DetailContent extends StatelessWidget {
  final FullAnime data;
  const DetailContent({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: UiConstantsProvider.containerPadding * 16,
      ),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderDetailSection(data: data),
          ],
        ),
      ),
    );
  }
}
