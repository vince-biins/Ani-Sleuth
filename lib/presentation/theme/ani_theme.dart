import 'package:ani_sleuth/presentation/theme/ani_color.dart';
import 'package:ani_sleuth/presentation/theme/ani_typography.dart';
import 'package:flutter/material.dart';

class AniTheme {
  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AniColor.primary,
    onPrimary: AniColor.onPrimary,
    primaryContainer: AniColor.primaryContainer,
    onPrimaryContainer: AniColor.onPrimaryContainer,
    secondary: AniColor.secondary,
    onSecondary: AniColor.onSecondary,
    secondaryContainer: AniColor.secondaryContainer,
    onSecondaryContainer: AniColor.onSecondaryContainer,
    tertiary: AniColor.tertiary,
    onTertiary: AniColor.onTertiary,
    tertiaryContainer: AniColor.tertiaryContainer,
    onTertiaryContainer: AniColor.onPrimaryContainer,
    error: AniColor.error,
    onError: AniColor.onError,
    errorContainer: AniColor.errorContainer,
    onErrorContainer: AniColor.onErrorContainer,
    surface: AniColor.surfaceDark,
    onSurface: AniColor.onSurfaceDark,
    onSurfaceVariant: AniColor.onSurfaceVariant,
    outline: AniColor.outline,
  );

  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AniColor.primary,
    onPrimary: AniColor.onPrimary,
    primaryContainer: AniColor.primaryContainer,
    onPrimaryContainer: AniColor.onPrimaryContainer,
    secondary: AniColor.secondary,
    onSecondary: AniColor.onSecondary,
    secondaryContainer: AniColor.secondaryContainer,
    onSecondaryContainer: AniColor.onSecondaryContainer,
    tertiary: AniColor.tertiary,
    onTertiary: AniColor.onTertiary,
    tertiaryContainer: AniColor.tertiaryContainer,
    onTertiaryContainer: AniColor.onPrimaryContainer,
    error: AniColor.error,
    onError: AniColor.onError,
    errorContainer: AniColor.errorContainer,
    onErrorContainer: AniColor.onErrorContainer,
    surface: AniColor.surfaceLight,
    onSurface: AniColor.onSurfaceLight,
    onSurfaceVariant: AniColor.onSurfaceVariant,
    outline: AniColor.outline,
  );

  static ThemeData lightTheme(BuildContext context) {
    final baseLight = ThemeData.light(useMaterial3: true);
    final responsiveTextTheme =
        AniTypography.fromMediaQuery(context, baseLight.textTheme);
    return baseLight.copyWith(
      colorScheme: lightColorScheme,

      scaffoldBackgroundColor: AniColor.backgroundLight,
      appBarTheme: baseLight.appBarTheme.copyWith(
        // Use copyWith to modify existing theme
        backgroundColor: AniColor.backgroundLight,
        foregroundColor: AniColor.onBackgroundLight,
        elevation: 0,
      ),
      textTheme:
          responsiveTextTheme.toTextTheme(), // Apply the responsive text theme
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    final baseDark = ThemeData.dark(useMaterial3: true);
    final responsiveTextTheme =
        AniTypography.fromMediaQuery(context, baseDark.textTheme);
    return baseDark.copyWith(
      colorScheme: darkColorScheme,

      scaffoldBackgroundColor: AniColor.backgroundDark,
      appBarTheme: baseDark.appBarTheme.copyWith(
        // Use copyWith to modify existing theme
        backgroundColor: AniColor.backgroundDark,
        foregroundColor: AniColor.onBackgroundDark,
        elevation: 0,
      ),
      textTheme:
          responsiveTextTheme.toTextTheme(), // Apply the responsive text theme
    );
  }
}
