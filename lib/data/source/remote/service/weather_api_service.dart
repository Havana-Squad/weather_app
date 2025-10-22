import 'package:dio/dio.dart';
import 'package:weather_app/domain/exception/exception.dart';

import '../dto/weather_dto.dart';

class WeatherApiService {
  final Dio _dio;

  WeatherApiService({Dio? dio}) : _dio = dio ?? Dio();

  Future<WeatherDTO> getWeather({
    required double latitude,
    required double longitude,
    String hourly = "temperature_2m,weathercode",
    String daily = "weather_code,temperature_2m_max,temperature_2m_min",
    String timezone = "auto",
    String current =
        "temperature_2m,relative_humidity_2m,apparent_temperature,precipitation_probability,pressure_msl,wind_speed_10m,is_day,rain,uv_index,weather_code",
    int forecastDays = 8,
    int forecastHours = 26,
    int pastHours = 6,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        'https://api.open-meteo.com/v1/forecast',
        queryParameters: {
          'latitude': latitude,
          'longitude': longitude,
          'current': current,
          'hourly': hourly,
          'daily': daily,
          'timezone': timezone,
          'forecast_days': forecastDays,
          'forecast_hours': forecastHours,
          'past_hours': pastHours,
        },
      );

      if (response.statusCode != 200) {
        throw Exception('Unexpected status code: ${response.statusCode}');
      }

      return WeatherDTO.fromJson(response.data!);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError) {
        throw NoNetworkException('Network error: ${e.message}');
      }
      rethrow;
    } catch (e) {
      if (e is FormatException || e is TypeError) {
        throw ParsingException();
      }
      rethrow;
    }
  }
}
