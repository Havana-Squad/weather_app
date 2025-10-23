import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_theme.dart';
import 'font_families.dart';

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

    return ThemeData.from(colorScheme: colorScheme);
  }

  @override
  LinearGradient get backgroundGradient => const LinearGradient(
    colors: [AppColors.dayBackgroundStart, AppColors.dayBackgroundEnd],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  @override
  Color get textColor => AppColors.dayText;

  @override
  Color get accentColor => AppColors.dayAccent;

  @override
  String get fontFamily => urbanist;
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

    return ThemeData.from(colorScheme: colorScheme);
  }

  @override
  LinearGradient get backgroundGradient => const LinearGradient(
    colors: [AppColors.nightBackgroundStart, AppColors.nightBackgroundEnd],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  @override
  Color get textColor => AppColors.nightText;

  @override
  Color get accentColor => AppColors.nightAccent;

  @override
  String get fontFamily => urbanist;
}
