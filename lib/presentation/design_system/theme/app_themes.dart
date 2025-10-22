import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_theme.dart';
import 'font_families.dart';

class DayTheme implements AppTheme {
  @override
  ThemeData get themeData {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.dayPrimary,
      colorScheme: const ColorScheme.light(
        primary: AppColors.dayPrimary,
        secondary: AppColors.dayAccent,
        onPrimary: Colors.white,
        onSurface: AppColors.dayText,
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
  Color get textColor => AppColors.dayText;

  @override
  Color get accentColor => AppColors.dayAccent;

  @override
  String get fontFamily => urbanist;
}

class NightTheme implements AppTheme {
  @override
  ThemeData get themeData {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.nightPrimary,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.nightPrimary,
        secondary: AppColors.nightAccent,
        onPrimary: Colors.black,
        onSurface: AppColors.nightText,
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
  Color get textColor => AppColors.nightText;

  @override
  Color get accentColor => AppColors.nightAccent;

  @override
  String get fontFamily => urbanist;
}