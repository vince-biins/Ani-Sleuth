import 'package:ani_sleuth/core/components/ui_constants.dart';
import 'package:flutter/material.dart';

class AniImageNetwork extends StatelessWidget {
  final String src;
  final BoxFit? fit;
  final double width;

  const AniImageNetwork({
    super.key,
    required this.src,
    this.fit = BoxFit.cover,
    this.width = imageItemWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      src,
      width: width,
      fit: fit,
      errorBuilder: (context, error, stackTrace) {
        return const Center(
          child: Icon(Icons.error),
        );
      },
      loadingBuilder: (context, child, loadingProgress) =>
          loadingProgress == null
              ? child
              : const Center(
                  child: CircularProgressIndicator(),
                ),
    );
  }
}
