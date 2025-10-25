part of '../weather_cubit.dart';

class WeatherState {
  final WeatherScreenState weather;
  final bool isLoading;
  final String? error;

  WeatherState({
    WeatherScreenState? weather,
    this.isLoading = true,
    this.error,
  }) : weather = weather ?? WeatherScreenState();


  WeatherState copyWith({
    WeatherScreenState? weather,
    bool? isLoading,
    String? error,
  }) {
    return WeatherState(
      weather: weather ?? this.weather,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}
