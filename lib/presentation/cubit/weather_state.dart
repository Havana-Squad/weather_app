part of 'weather_cubit.dart';

class WeatherState {
  final Weather? weather;
  final Position? position;
  final bool isLoading;
  final String? error;

  const WeatherState({
    this.weather,
    this.position,
    this.isLoading = false,
    this.error,
  });

  WeatherState copyWith({
    Weather? weather,
    Position? position,
    bool? isLoading,
    String? error,
  }) {
    return WeatherState(
      weather: weather ?? this.weather,
      position: position ?? this.position,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}
