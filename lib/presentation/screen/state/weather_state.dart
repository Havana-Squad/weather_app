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

  static const Object _errorSentinel = Object();

  WeatherState copyWith({
    WeatherScreenState? weather,
    bool? isLoading,
    Object? error = _errorSentinel,
  }) {
    return WeatherState(
      weather: weather ?? this.weather,
      isLoading: isLoading ?? this.isLoading,
      error: error == _errorSentinel ? this.error : error as String?,
    );
  }
}
