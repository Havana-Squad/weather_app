import 'package:equatable/equatable.dart';

import '../../../../domain/entity/Weather.dart';

class CurrentWeatherUnitsDTO extends Equatable {
  final String? time;
  final String? interval;
  final String? temperature;
  final String? humidity;
  final String? apparentTemperature;
  final String? precipitationProbability;
  final String? pressureMsl;
  final String? windSpeed;
  final String? isDay;
  final String? rain;
  final String? uvIndex;
  final String? weatherCode;

  const CurrentWeatherUnitsDTO({
    this.time,
    this.interval,
    this.temperature,
    this.humidity,
    this.apparentTemperature,
    this.precipitationProbability,
    this.pressureMsl,
    this.windSpeed,
    this.isDay,
    this.rain,
    this.uvIndex,
    this.weatherCode,
  });

  factory CurrentWeatherUnitsDTO.fromJson(Map<String, dynamic> json) {
    return CurrentWeatherUnitsDTO(
      time: json['time'] as String?,
      interval: json['interval'] as String?,
      temperature: json['temperature_2m'] as String?,
      humidity: json['relative_humidity_2m'] as String?,
      apparentTemperature: json['apparent_temperature'] as String?,
      precipitationProbability: json['precipitation_probability'] as String?,
      pressureMsl: json['pressure_msl'] as String?,
      windSpeed: json['wind_speed_10m'] as String?,
      isDay: json['is_day'] as String?,
      rain: json['rain'] as String?,
      uvIndex: json['uv_index'] as String?,
      weatherCode: json['weather_code'] as String?,
    );
  }

  @override
  List<Object?> get props => [
    time,
    interval,
    temperature,
    humidity,
    apparentTemperature,
    precipitationProbability,
    pressureMsl,
    windSpeed,
    isDay,
    rain,
    uvIndex,
    weatherCode,
  ];

  CurrentWeatherUnits toDomain() {
    return CurrentWeatherUnits(
      time: time ?? '',
      interval: interval ?? '',
      temperature: temperature ?? '',
      humidity: humidity ?? '',
      apparentTemperature: apparentTemperature ?? '',
      precipitationProbability: precipitationProbability ?? '',
      pressureMsl: pressureMsl ?? '',
      windSpeed: windSpeed ?? '',
      isDay: isDay ?? '',
      rain: rain ?? '',
      uvIndex: uvIndex ?? '',
      weatherCode: weatherCode ?? '',
    );
  }
}