import 'package:flutter/material.dart';
import 'package:weather_app/presentation/screen/component/hourly_forecast_section.dart';
import 'package:weather_app/presentation/screen/component/weather_info_section.dart';
import 'package:weather_app/presentation/screen/weather_screen_state.dart';

import '../design_system/theme/app_themes.dart';
import 'component/location_card.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final appTheme = isDarkMode ? NightTheme() : DayTheme();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: appTheme.backgroundGradient,
        ),
        child: Center(
          child: Column(
            children: [
              LocationCard(),
              WeatherInfoSection(
                wind: '13',
                humidity: '24',
                rain: '2',
                uv: '2',
                pressure: '1012',
                feelsLike: '22',
              ),
              const SizedBox(height: 24),
              HourlyForecastSection(hourlyForecast: dummyHourlyForecast),
            ],
          ),
        ),
      ),
    );
  }
}
