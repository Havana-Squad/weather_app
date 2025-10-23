import 'package:flutter/material.dart';
import 'package:weather_app/presentation/screen/component/weather_info_component.dart';

class WeatherInfo extends StatelessWidget{
  final String wind;
  final String humidity;
  final String rain;
  final String uv;
  final String pressure;
  final String feelsLike;


  const WeatherInfo({
    super.key,
    required this.wind,
    required this.humidity,
    required this.rain,
    required this.uv,
    required this.pressure,
    required this.feelsLike,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            WeatherInfoComponent(
              iconAsset: 'assets/images/day_fog.png',
              value: '$wind km/h',
              title: 'Wind',
            ),
            WeatherInfoComponent(
              iconAsset: 'assets/images/day_fog.png',
              value: '$humidity%',
              title: 'Humidity',
            ),
            WeatherInfoComponent(
              iconAsset: 'assets/images/day_fog.png',
              value: '$rain%',
              title: 'Rain',
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            WeatherInfoComponent(
              iconAsset: 'assets/images/day_fog.png',
              value: uv,
              title: 'UV Index',
            ),
            WeatherInfoComponent(
              iconAsset: 'assets/images/day_fog.png',
              value: '$pressure hPa',
              title: 'Pressure',
            ),
            WeatherInfoComponent(
              iconAsset: 'assets/images/day_fog.png',
              value: '$feelsLike°C',
              title: 'Feels like',
            ),
          ],
        )
      ],
    );
  }
}