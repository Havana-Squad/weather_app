part of '../weather_cubit.dart';

class WeatherState {
  final Weather? weather;
  final bool isLoading;
  final String? error;

  const WeatherState({
    this.weather,
    this.isLoading = true,
    this.error,
  });

  WeatherState copyWith({
    Weather? weather,
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
