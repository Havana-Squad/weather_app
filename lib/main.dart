import 'package:flutter/material.dart';
import 'package:weather_app/presentation/design_system/theme/app_themes.dart';
import 'package:weather_app/presentation/screen/weather_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: DayTheme().themeData,
      darkTheme: NightTheme().themeData,
      themeMode: ThemeMode.system,
      home: const WeatherScreen(),
    );
  }
}