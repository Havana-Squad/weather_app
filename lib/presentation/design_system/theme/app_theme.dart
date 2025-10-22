import 'package:flutter/material.dart';

abstract class AppTheme {
  ThemeData get themeData;
  LinearGradient get backgroundGradient;
  Color get textColor;
  Color get accentColor;
  String get fontFamily;
}