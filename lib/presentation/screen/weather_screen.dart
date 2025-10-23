import 'package:flutter/material.dart';
import 'package:weather_app/presentation/screen/component/hourly_forecast_section.dart';
import 'package:weather_app/presentation/screen/component/weather_info_section.dart';
import 'package:weather_app/presentation/screen/weather_screen_state.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            WeatherInfoSection(
              wind: '13',
              humidity: '24',
              rain: '2',
              uv: '2',
              pressure: '1012',
              feelsLike: '22',
            ),
            const SizedBox(height: 24),
            HourlyForecastSection(hourlyForecast: dummyHourlyForecast)
          ],
        ),
      ),
    );
  }
}
