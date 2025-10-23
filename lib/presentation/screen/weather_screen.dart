import 'package:flutter/material.dart';
import 'package:weather_app/presentation/screen/component/weather_info.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WeatherInfo(
          wind: '13',
          humidity: '24',
          rain: '2',
          uv: '2',
          pressure: '1012',
          feelsLike: '22',
        ),
      ),
    );
  }
}
