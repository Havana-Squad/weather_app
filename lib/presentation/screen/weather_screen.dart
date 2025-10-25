import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../design_system/theme/app_themes.dart';
import 'component/weather_content.dart';
import 'weather_cubit.dart';

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
              return WeatherContent(weather: state.weather);
            }
          },
        ),
      ),
    );
  }
}