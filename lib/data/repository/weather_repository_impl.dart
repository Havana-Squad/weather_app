import 'dart:developer' as dev;

import '../../domain/entity/Weather.dart';
import '../../domain/repository/weather_repository.dart';
import '../source/remote/service/weather_api_service.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApiService _apiService;

  WeatherRepositoryImpl(this._apiService);

  @override
  Future<Weather> getWeather({required double latitude, required double longitude}) async {
    try {
      final dto = await _apiService.getWeather(
        latitude: latitude,
        longitude: longitude,
      );

      dev.log('Received weather data: ${dto.toString()}', name: 'WeatherRepository');

      return dto.toDomain();
    } catch (e) {
      dev.log(
        'Error fetching weather data',
        name: 'WeatherRepository',
        error: e.toString(),
      );
      rethrow;
    }
  }
}
