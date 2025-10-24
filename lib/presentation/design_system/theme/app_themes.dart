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

    final base = ThemeData.from(colorScheme: colorScheme);
    final applied = base.textTheme.apply(
      fontFamily: FontFamily.urbanist,
      bodyColor: AppColors.dayText,
      displayColor: AppColors.dayText,
    );
    return base.copyWith(
      textTheme: applied.copyWith(
        bodyLarge: applied.bodyLarge?.copyWith(letterSpacing: 0.25),
        bodyMedium: applied.bodyMedium?.copyWith(letterSpacing: 0.25),
        bodySmall: applied.bodySmall?.copyWith(letterSpacing: 0.25),
        labelLarge: applied.labelLarge?.copyWith(letterSpacing: 0.25),
        labelMedium: applied.labelMedium?.copyWith(letterSpacing: 0.25),
        labelSmall: applied.labelSmall?.copyWith(letterSpacing: 0.25),
        displayLarge: applied.displayLarge?.copyWith(letterSpacing: 0.25),
        displayMedium: applied.displayMedium?.copyWith(letterSpacing: 0.25),
        displaySmall: applied.displaySmall?.copyWith(letterSpacing: 0.25),
        headlineLarge: applied.headlineLarge?.copyWith(letterSpacing: 0.25),
        headlineMedium: applied.headlineMedium?.copyWith(letterSpacing: 0.25),
        headlineSmall: applied.headlineSmall?.copyWith(letterSpacing: 0.25),
        titleLarge: applied.titleLarge?.copyWith(letterSpacing: 0.25),
        titleMedium: applied.titleMedium?.copyWith(letterSpacing: 0.25),
        titleSmall: applied.titleSmall?.copyWith(letterSpacing: 0.25),
      ),
    );
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

    final base = ThemeData.from(colorScheme: colorScheme);
    final applied = base.textTheme.apply(
      fontFamily: FontFamily.urbanist,
      bodyColor: AppColors.nightText,
      displayColor: AppColors.nightText,
    );
    return base.copyWith(
      textTheme: applied.copyWith(
        bodyLarge: applied.bodyLarge?.copyWith(letterSpacing: 0.25),
        bodyMedium: applied.bodyMedium?.copyWith(letterSpacing: 0.25),
        bodySmall: applied.bodySmall?.copyWith(letterSpacing: 0.25),
        labelLarge: applied.labelLarge?.copyWith(letterSpacing: 0.25),
        labelMedium: applied.labelMedium?.copyWith(letterSpacing: 0.25),
        labelSmall: applied.labelSmall?.copyWith(letterSpacing: 0.25),
        displayLarge: applied.displayLarge?.copyWith(letterSpacing: 0.25),
        displayMedium: applied.displayMedium?.copyWith(letterSpacing: 0.25),
        displaySmall: applied.displaySmall?.copyWith(letterSpacing: 0.25),
        headlineLarge: applied.headlineLarge?.copyWith(letterSpacing: 0.25),
        headlineMedium: applied.headlineMedium?.copyWith(letterSpacing: 0.25),
        headlineSmall: applied.headlineSmall?.copyWith(letterSpacing: 0.25),
        titleLarge: applied.titleLarge?.copyWith(letterSpacing: 0.25),
        titleMedium: applied.titleMedium?.copyWith(letterSpacing: 0.25),
        titleSmall: applied.titleSmall?.copyWith(letterSpacing: 0.25),
      ),
    );
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
