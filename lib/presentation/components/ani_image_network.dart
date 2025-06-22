import 'package:flutter/material.dart';

class AniImageNetwork extends StatelessWidget {
  final String src;
  final BoxFit? fit;
  final double width;
  final double height;

  const AniImageNetwork({
    super.key,
    required this.src,
    this.fit = BoxFit.cover,
    this.width = 200,
    this.height = 300,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown.shade500,
      child: Image.network(
        src,
        width: width,
        height: height,
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
      ),
    );
  }
}
