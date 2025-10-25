import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/presentation/screen/component/hourly_forecast_section.dart';
import 'package:weather_app/presentation/screen/component/weather_info_section.dart';
import 'package:weather_app/presentation/screen/state/weather_screen_state.dart';

import 'weather_cubit.dart';
import '../design_system/theme/app_themes.dart';
import 'component/daily_details_info_section.dart';
import 'component/location_card.dart';
import 'component/temperature_info_card.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final appTheme = isDarkMode ? NightTheme() : DayTheme();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: appTheme.backgroundGradient),
        child: BlocBuilder<WeatherCubit, WeatherState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              );
            }
            if (state.error != null) {
              return Center(
                child: Text(
                  'Error: ${state.error}',
                  style: const TextStyle(color: Colors.red, fontSize: 16),
                ),
              );
            } else {
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LocationCard(
                        locationName:
                            state.weather?.timezone ??
                            'Unknown Location',
                      ),
                      Image.asset(
                        'assets/images/day_fog.png',
                        width: 220,
                        height: 200,
                        fit: BoxFit.contain,
                      ),
                      TemperatureInfoCard(
                        temperatureNumber: '24°C',
                        weatherDescription: 'Partly cloudy',
                        highTemperature: 28,
                        lowTemperature: 18,
                      ),
                      const SizedBox(height: 16),
                      WeatherInfoSection(
                        wind: '13',
                        humidity: '24',
                        rain: '2',
                        uv: '2',
                        pressure: '1012',
                        feelsLike: '22',
                      ),
                      const SizedBox(height: 24),
                      HourlyForecastSection(
                        hourlyForecast: dummyHourlyForecast,
                      ),
                      const SizedBox(height: 24),
                      DailyDetailsInfoSection(
                        dailyForecast: dummyDailyForecast,
                      ),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
