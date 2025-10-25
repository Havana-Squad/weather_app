import 'package:flutter/material.dart';
import 'package:weather_app/gen/fonts.gen.dart';

import 'app_colors.dart';
import 'app_theme.dart';

class DayTheme implements AppTheme {
  @override
  ThemeData get themeData {
    const colorScheme = ColorScheme.light(
      primary: AppColors.dayPrimary,
      secondary: AppColors.dayAccent,
      onPrimary: AppColors.day87,
      onSurface: AppColors.dayText,
      outline: AppColors.dayBorder,
      surface: AppColors.dayBackground,
      onSurfaceVariant: AppColors.dayText60,
      onSecondary: AppColors.dayText87,
      secondaryContainer: AppColors.dayElementBackgroundColor,
    );

    return _buildThemeFrom(colorScheme, AppColors.dayText);
  }

  @override
  LinearGradient get backgroundGradient => const LinearGradient(
    colors: [AppColors.dayBackgroundStart, AppColors.dayBackgroundEnd],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  @override
  Color get accentColor => AppColors.dayAccent;
}

class NightTheme implements AppTheme {
  @override
  ThemeData get themeData {
    const colorScheme = ColorScheme.dark(
      primary: AppColors.nightPrimary,
      secondary: AppColors.nightAccent,
      onPrimary: Colors.black,
      onSurface: AppColors.nightText,
      outline: AppColors.nightBorder,
      surface: AppColors.nightBackground,
      onSurfaceVariant: AppColors.nightText60,
      secondaryContainer: AppColors.nightElementBackgroundColor,
    );

    return _buildThemeFrom(colorScheme, AppColors.nightText);
  }

  @override
  LinearGradient get backgroundGradient => const LinearGradient(
    colors: [AppColors.nightBackgroundStart, AppColors.nightBackgroundEnd],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  @override
  Color get accentColor => AppColors.nightAccent;
}


ThemeData _buildThemeFrom(ColorScheme colorScheme, Color textColor) {
  final base = ThemeData.from(colorScheme: colorScheme);
  final applied = base.textTheme.apply(
    fontFamily: FontFamily.urbanist,
    bodyColor: textColor,
    displayColor: textColor,
  );
  const double _defaultLetterSpacing = 0.25;
  return base.copyWith(
    textTheme: applied.copyWith(
      bodyLarge: applied.bodyLarge?.copyWith(letterSpacing: _defaultLetterSpacing),
      bodyMedium: applied.bodyMedium?.copyWith(letterSpacing: _defaultLetterSpacing),
      bodySmall: applied.bodySmall?.copyWith(letterSpacing: _defaultLetterSpacing),
      labelLarge: applied.labelLarge?.copyWith(letterSpacing: _defaultLetterSpacing),
      labelMedium: applied.labelMedium?.copyWith(letterSpacing: _defaultLetterSpacing),
      labelSmall: applied.labelSmall?.copyWith(letterSpacing: _defaultLetterSpacing),
      displayLarge: applied.displayLarge?.copyWith(letterSpacing: _defaultLetterSpacing),
      displayMedium: applied.displayMedium?.copyWith(letterSpacing: _defaultLetterSpacing),
      displaySmall: applied.displaySmall?.copyWith(letterSpacing: _defaultLetterSpacing),
      headlineLarge: applied.headlineLarge?.copyWith(letterSpacing: _defaultLetterSpacing),
      headlineMedium: applied.headlineMedium?.copyWith(letterSpacing: _defaultLetterSpacing),
      headlineSmall: applied.headlineSmall?.copyWith(letterSpacing: _defaultLetterSpacing),
      titleLarge: applied.titleLarge?.copyWith(letterSpacing: _defaultLetterSpacing),
      titleMedium: applied.titleMedium?.copyWith(letterSpacing: _defaultLetterSpacing),
      titleSmall: applied.titleSmall?.copyWith(letterSpacing: _defaultLetterSpacing),
    ),
  );
}
