import 'package:ani_sleuth/core/util.dart';
import 'package:flutter/material.dart';

class AniTypography {
  final TextStyle displayLarge;
  final TextStyle displayMedium;
  final TextStyle displaySmall;
  final TextStyle headlineLarge;
  final TextStyle headlineMedium;
  final TextStyle headlineSmall;
  final TextStyle titleLarge;
  final TextStyle titleMedium;
  final TextStyle titleSmall;
  final TextStyle bodyLarge;
  final TextStyle bodyMedium;
  final TextStyle bodySmall;
  final TextStyle labelLarge;
  final TextStyle labelMedium;
  final TextStyle labelSmall;

  AniTypography({
    required this.displayLarge,
    required this.displayMedium,
    required this.displaySmall,
    required this.headlineLarge,
    required this.headlineMedium,
    required this.headlineSmall,
    required this.titleLarge,
    required this.titleMedium,
    required this.titleSmall,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.bodySmall,
    required this.labelLarge,
    required this.labelMedium,
    required this.labelSmall,
  });

  factory AniTypography.fromMediaQuery(BuildContext context, TextTheme base) {
    const String poppins = 'Poppins';

    if (context.isCompact) {
      return AniTypography(
        displayLarge:
            base.displayLarge!.copyWith(fontSize: 34.0, fontFamily: poppins),
        displayMedium:
            base.displayMedium!.copyWith(fontSize: 28.0, fontFamily: poppins),
        displaySmall:
            base.displaySmall!.copyWith(fontSize: 22.0, fontFamily: poppins),
        headlineLarge:
            base.headlineLarge!.copyWith(fontSize: 28.0, fontFamily: poppins),
        headlineMedium:
            base.headlineMedium!.copyWith(fontSize: 24.0, fontFamily: poppins),
        headlineSmall:
            base.headlineSmall!.copyWith(fontSize: 20.0, fontFamily: poppins),
        titleLarge:
            base.titleLarge!.copyWith(fontSize: 18.0, fontFamily: poppins),
        titleMedium:
            base.titleMedium!.copyWith(fontSize: 16.0, fontFamily: poppins),
        titleSmall:
            base.titleSmall!.copyWith(fontSize: 14.0, fontFamily: poppins),
        bodyLarge:
            base.bodyLarge!.copyWith(fontSize: 16.0, fontFamily: poppins),
        bodyMedium:
            base.bodyMedium!.copyWith(fontSize: 14.0, fontFamily: poppins),
        bodySmall:
            base.bodySmall!.copyWith(fontSize: 12.0, fontFamily: poppins),
        labelLarge:
            base.labelLarge!.copyWith(fontSize: 14.0, fontFamily: poppins),
        labelMedium:
            base.labelMedium!.copyWith(fontSize: 12.0, fontFamily: poppins),
        labelSmall:
            base.labelSmall!.copyWith(fontSize: 10.0, fontFamily: poppins),
      );
    } else if (context.isMedium) {
      return AniTypography(
        displayLarge:
            base.displayLarge!.copyWith(fontSize: 45.0, fontFamily: poppins),
        displayMedium:
            base.displayMedium!.copyWith(fontSize: 37.0, fontFamily: poppins),
        displaySmall:
            base.displaySmall!.copyWith(fontSize: 30.0, fontFamily: poppins),
        headlineLarge:
            base.headlineLarge!.copyWith(fontSize: 32.0, fontFamily: poppins),
        headlineMedium:
            base.headlineMedium!.copyWith(fontSize: 28.0, fontFamily: poppins),
        headlineSmall:
            base.headlineSmall!.copyWith(fontSize: 24.0, fontFamily: poppins),
        titleLarge:
            base.titleLarge!.copyWith(fontSize: 22.0, fontFamily: poppins),
        titleMedium:
            base.titleMedium!.copyWith(fontSize: 20.0, fontFamily: poppins),
        titleSmall:
            base.titleSmall!.copyWith(fontSize: 18.0, fontFamily: poppins),
        bodyLarge:
            base.bodyLarge!.copyWith(fontSize: 18.0, fontFamily: poppins),
        bodyMedium:
            base.bodyMedium!.copyWith(fontSize: 16.0, fontFamily: poppins),
        bodySmall:
            base.bodySmall!.copyWith(fontSize: 14.0, fontFamily: poppins),
        labelLarge:
            base.labelLarge!.copyWith(fontSize: 16.0, fontFamily: poppins),
        labelMedium:
            base.labelMedium!.copyWith(fontSize: 14.0, fontFamily: poppins),
        labelSmall:
            base.labelSmall!.copyWith(fontSize: 12.0, fontFamily: poppins),
      );
    } else {
      // Expanded
      return AniTypography(
        displayLarge:
            base.displayLarge!.copyWith(fontSize: 57.0, fontFamily: poppins),
        displayMedium:
            base.displayMedium!.copyWith(fontSize: 45.0, fontFamily: poppins),
        displaySmall:
            base.displaySmall!.copyWith(fontSize: 36.0, fontFamily: poppins),
        headlineLarge:
            base.headlineLarge!.copyWith(fontSize: 36.0, fontFamily: poppins),
        headlineMedium:
            base.headlineMedium!.copyWith(fontSize: 32.0, fontFamily: poppins),
        headlineSmall:
            base.headlineSmall!.copyWith(fontSize: 28.0, fontFamily: poppins),
        titleLarge:
            base.titleLarge!.copyWith(fontSize: 26.0, fontFamily: poppins),
        titleMedium:
            base.titleMedium!.copyWith(fontSize: 24.0, fontFamily: poppins),
        titleSmall:
            base.titleSmall!.copyWith(fontSize: 22.0, fontFamily: poppins),
        bodyLarge:
            base.bodyLarge!.copyWith(fontSize: 20.0, fontFamily: poppins),
        bodyMedium:
            base.bodyMedium!.copyWith(fontSize: 18.0, fontFamily: poppins),
        bodySmall:
            base.bodySmall!.copyWith(fontSize: 16.0, fontFamily: poppins),
        labelLarge:
            base.labelLarge!.copyWith(fontSize: 18.0, fontFamily: poppins),
        labelMedium:
            base.labelMedium!.copyWith(fontSize: 16.0, fontFamily: poppins),
        labelSmall:
            base.labelSmall!.copyWith(fontSize: 14.0, fontFamily: poppins),
      );
    }
  }

  TextTheme toTextTheme() {
    return TextTheme(
      displayLarge: displayLarge,
      displayMedium: displayMedium,
      displaySmall: displaySmall,
      headlineLarge: headlineLarge,
      headlineMedium: headlineMedium,
      headlineSmall: headlineSmall,
      titleLarge: titleLarge,
      titleMedium: titleMedium,
      titleSmall: titleSmall,
      bodyLarge: bodyLarge,
      bodyMedium: bodyMedium,
      bodySmall: bodySmall,
      labelLarge: labelLarge,
      labelMedium: labelMedium,
      labelSmall: labelSmall,
    );
  }
}
