import 'package:ani_sleuth/presentation/theme/ani_color.dart';
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

  static ThemeData get darkTheme => ThemeData(
        colorScheme: darkColorScheme,
        useMaterial3: true,
        scaffoldBackgroundColor: AniColor.backgroundDark,
        appBarTheme: AppBarTheme(
          backgroundColor: AniColor.backgroundDark,
          foregroundColor: AniColor.onBackgroundDark,
          elevation: 0,
        ),
      );

  static ThemeData get lightTheme => ThemeData(
        colorScheme: lightColorScheme,
        useMaterial3: true,
        scaffoldBackgroundColor: AniColor.backgroundLight,
        appBarTheme: AppBarTheme(
          backgroundColor: AniColor.backgroundLight,
          foregroundColor: AniColor.onBackgroundLight,
          elevation: 0,
        ),
      );
}
