import 'package:ani_sleuth/core/components/ui_constants.dart';
import 'package:ani_sleuth/presentation/theme/ani_color.dart';
import 'package:ani_sleuth/presentation/theme/ani_typography.dart';
import 'package:flutter/material.dart';

enum ElevatedButtonType {
  normal,
  appbar,
}

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
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: elevatedButtonStyle(
          backgroundColor: AniColor.primary,
          textColor: AniColor.onPrimary,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: outlinedButtonStyle(AniColor.primary, AniColor.primary),
      ),
      textButtonTheme: TextButtonThemeData(
        style: textButtonStyle(AniColor.primary),
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
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: elevatedButtonStyle(
          backgroundColor: AniColor.primary,
          textColor: AniColor.onPrimary,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: outlinedButtonStyle(AniColor.secondary, AniColor.secondary),
      ),
      textButtonTheme: TextButtonThemeData(
        style: textButtonStyle(AniColor.primary),
      ),
      textTheme:
          responsiveTextTheme.toTextTheme(), // Apply the responsive text theme
    );
  }

  static ButtonStyle elevatedButtonStyle({
    required Color backgroundColor,
    required Color textColor,
    double borderRadius = UiConstantsProvider.containerBorderRadius,
    ElevatedButtonType type = ElevatedButtonType.normal,
  }) {
    return switch (type) {
      ElevatedButtonType.normal => ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ElevatedButtonType.appbar => ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: const EdgeInsets.all(12.0),
        ),
    };
  }

  static ButtonStyle outlinedButtonStyle(Color borderColor, Color textColor) {
    return OutlinedButton.styleFrom(
      foregroundColor: textColor,
      side: BorderSide(color: borderColor),
      textStyle: const TextStyle(fontSize: 16),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  static ButtonStyle textButtonStyle(Color textColor) {
    return TextButton.styleFrom(
      foregroundColor: textColor,
      textStyle: const TextStyle(fontSize: 16),
    );
  }
}
