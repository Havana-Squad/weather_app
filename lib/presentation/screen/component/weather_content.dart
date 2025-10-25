import 'package:flutter/material.dart';
import 'package:weather_app/presentation/screen/component/temperature_info_card.dart';
import 'package:weather_app/presentation/screen/component/weather_info_section.dart';

import '../state/weather_screen_state_mapper.dart';
import 'daily_details_info_section.dart';
import 'hourly_forecast_section.dart';
import 'location_card.dart';

class WeatherContent extends StatelessWidget {
  final WeatherScreenState weather;

  const WeatherContent({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 40, 0, 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LocationCard(locationName: weather.cityName),
            weather.currentWeatherImage.image(
              width: 220,
              height: 200,
              fit: BoxFit.contain,
            ),
            TemperatureInfoCard(
              temperatureNumber: weather.currentTemperature,
              weatherDescription: weather.weatherCondition,
              highTemperature: weather.maxTemperature,
              lowTemperature: weather.minTemperature,
            ),
            const SizedBox(height: 16),
            WeatherInfoSection(
              wind: weather.windSpeed,
              humidity: weather.relativeHumidity,
              rain: weather.precipitationProbability,
              uv: weather.ultraVioletIndex,
              pressure: weather.airPressure,
              feelsLike: weather.apparentTemperature,
            ),
            const SizedBox(height: 24),
            HourlyForecastSection(hourlyForecast: weather.hourlyForecast),
            const SizedBox(height: 24),
            DailyDetailsInfoSection(dailyForecast: weather.dailyForecast),
          ],
        ),
      ),
    );
  }
}
