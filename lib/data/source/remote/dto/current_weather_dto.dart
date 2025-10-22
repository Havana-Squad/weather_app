import 'package:equatable/equatable.dart';
import 'package:weather_app/data/source/remote/dto/current_weather_units_dto.dart';

import '../../../../domain/entity/Weather.dart';
import '../../../mapper/date_time_mapper.dart';

class CurrentWeatherDTO extends Equatable {
  final String? time;
  final int? interval;
  final double? temperature;
  final int? relativeHumidity2m;
  final double? apparentTemperature;
  final int? precipitationProbability;
  final double? pressureMsl;
  final double? windSpeed;
  final int? isDay;
  final double? rain;
  final double? uvIndex;
  final int? weatherCode;

  const CurrentWeatherDTO({
    this.time,
    this.interval,
    this.temperature,
    this.relativeHumidity2m,
    this.apparentTemperature,
    this.precipitationProbability,
    this.pressureMsl,
    this.windSpeed,
    this.isDay,
    this.rain,
    this.uvIndex,
    this.weatherCode,
  });

  factory CurrentWeatherDTO.fromJson(Map<String, dynamic> json) {
    return CurrentWeatherDTO(
      time: json['time'] as String?,
      interval: json['interval'] as int?,
      temperature: (json['temperature_2m'] as num?)?.toDouble(),
      relativeHumidity2m: json['relative_humidity_2m'] as int?,
      apparentTemperature: (json['apparent_temperature'] as num?)?.toDouble(),
      precipitationProbability: json['precipitation_probability'] as int?,
      pressureMsl: (json['pressure_msl'] as num?)?.toDouble(),
      windSpeed: (json['wind_speed_10m'] as num?)?.toDouble(),
      isDay: json['is_day'] as int?,
      rain: (json['rain'] as num?)?.toDouble(),
      uvIndex: (json['uv_index'] as num?)?.toDouble(),
      weatherCode: json['weather_code'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'time': time,
      'interval': interval,
      'temperature_2m': temperature,
      'relative_humidity_2m': relativeHumidity2m,
      'apparent_temperature': apparentTemperature,
      'precipitation_probability': precipitationProbability,
      'pressure_msl': pressureMsl,
      'wind_speed_10m': windSpeed,
      'is_day': isDay,
      'rain': rain,
      'uv_index': uvIndex,
      'weather_code': weatherCode,
    };
  }

  @override
  List<Object?> get props => [
    time,
    interval,
    temperature,
    relativeHumidity2m,
    apparentTemperature,
    precipitationProbability,
    pressureMsl,
    windSpeed,
    isDay,
    rain,
    uvIndex,
    weatherCode,
  ];

  CurrentWeather toDomain(CurrentWeatherUnitsDTO? currentWeatherUnits) {
    return CurrentWeather(
      time: parseDateTime(time),
      interval: interval ?? 0,
      temperature: temperature ?? 0.0,
      relativeHumidity2m: relativeHumidity2m ?? 0,
      apparentTemperature: apparentTemperature ?? 0.0,
      precipitationProbability: precipitationProbability ?? 0,
      pressureMsl: pressureMsl ?? 0.0,
      windspeed: windSpeed ?? 0.0,
      isDay: (isDay ?? 0) == 1,
      rain: rain ?? 0.0,
      uvIndex: uvIndex ?? 0.0,
      weatherCode: weatherCode ?? 0,
      units: (currentWeatherUnits ?? CurrentWeatherUnitsDTO()).toDomain(),
    );
  }
}
