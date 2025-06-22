import 'package:ani_sleuth/core/components/ui_constants.dart';
import 'package:ani_sleuth/core/util.dart';
import 'package:flutter/material.dart';

import '../../../components/ani_image_network.dart';

class HeaderSection extends StatelessWidget {
  final String title;
  final String imgUrl;
  final String subtitle;

  const HeaderSection({
    super.key,
    required this.title,
    required this.imgUrl,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final width = context.screenWidth;
    final height = context.screenHeight * 0.3;
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          SizedBox(
            height: height,
            width: context.screenWidth,
            child: AniImageNetwork(
              src: imgUrl,
              fit: BoxFit.cover,
              height: height,
              width: width,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(UiConstantsProvider.containerPadding),
            child: SizedBox(
              height: height,
              width: context.screenWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(
                    height: UiConstantsProvider.spacing,
                  ),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
