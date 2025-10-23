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
              iconAsset: 'assets/icons/fast-wind.svg',
              value: '$wind km/h',
              title: 'Wind',
            ),
            WeatherInfoComponent(
              iconAsset: 'assets/icons/humidity.svg',
              value: '$humidity%',
              title: 'Humidity',
            ),
            WeatherInfoComponent(
              iconAsset: 'assets/icons/rain.svg',
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
              iconAsset: 'assets/icons/uv-02.svg',
              value: uv,
              title: 'UV Index',
            ),
            WeatherInfoComponent(
              iconAsset: 'assets/icons/arrow_down-05.svg',
              value: '$pressure hPa',
              title: 'Pressure',
            ),
            WeatherInfoComponent(
              iconAsset: 'assets/icons/temperature.svg',
              value: '$feelsLike°C',
              title: 'Feels like',
            ),
          ],
        )
      ],
    );
  }
}