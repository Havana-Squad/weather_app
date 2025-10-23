import 'package:equatable/equatable.dart';

import '../../../../domain/entity/Weather.dart';
import 'current_weather_dto.dart';
import 'current_weather_units_dto.dart';
import 'daily_dto.dart';
import 'daily_units_dto.dart';
import 'hourly_dto.dart';
import 'hourly_units_dto.dart';

class WeatherDTO extends Equatable {
  final double? latitude;
  final double? longitude;
  final double? generationTimeMs;
  final int? utcOffsetSeconds;
  final String? timezone;
  final String? timezoneAbbreviation;
  final double? elevation;
  final CurrentWeatherUnitsDTO? currentWeatherUnits;
  final CurrentWeatherDTO? currentWeather;
  final HourlyUnitsDTO? hourlyUnits;
  final HourlyDTO? hourly;
  final DailyUnitsDTO? dailyUnits;
  final DailyDTO? daily;

  const WeatherDTO({
    this.latitude,
    this.longitude,
    this.generationTimeMs,
    this.utcOffsetSeconds,
    this.timezone,
    this.timezoneAbbreviation,
    this.elevation,
    this.currentWeatherUnits,
    this.currentWeather,
    this.hourlyUnits,
    this.hourly,
    this.dailyUnits,
    this.daily,
  });

  factory WeatherDTO.fromJson(Map<String, dynamic> json) {
    return WeatherDTO(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      generationTimeMs: (json['generationtime_ms'] as num?)?.toDouble(),
      utcOffsetSeconds: json['utc_offset_seconds'] as int?,
      timezone: json['timezone'] as String?,
      timezoneAbbreviation: json['timezone_abbreviation'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      currentWeatherUnits: json['current_units'] != null
          ? CurrentWeatherUnitsDTO.fromJson(
              json['current_units'] as Map<String, dynamic>,
            )
          : null,
      currentWeather: json['current'] != null
          ? CurrentWeatherDTO.fromJson(json['current'] as Map<String, dynamic>)
          : null,
      hourlyUnits: json['hourly_units'] != null
          ? HourlyUnitsDTO.fromJson(
              json['hourly_units'] as Map<String, dynamic>,
            )
          : null,
      hourly: json['hourly'] != null
          ? HourlyDTO.fromJson(json['hourly'] as Map<String, dynamic>)
          : null,
      dailyUnits: json['daily_units'] != null
          ? DailyUnitsDTO.fromJson(json['daily_units'] as Map<String, dynamic>)
          : null,
      daily: json['daily'] != null
          ? DailyDTO.fromJson(json['daily'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  List<Object?> get props => [
    latitude,
    longitude,
    generationTimeMs,
    utcOffsetSeconds,
    timezone,
    timezoneAbbreviation,
    elevation,
    currentWeatherUnits,
    currentWeather,
    hourlyUnits,
    hourly,
    dailyUnits,
    daily,
  ];

  Weather toDomain() {
    return Weather(
      latitude: latitude ?? 0.0,
      longitude: longitude ?? 0.0,
      generationTimeMs: generationTimeMs ?? 0.0,
      utcOffsetSeconds: utcOffsetSeconds ?? 0,
      timezone: timezone ?? '',
      timezoneAbbreviation: timezoneAbbreviation ?? '',
      elevation: elevation ?? 0.0,
      currentWeather: (currentWeather ?? CurrentWeatherDTO()).toDomain(currentWeatherUnits),
      hourlyForecast: (hourly ?? HourlyDTO()).toDomain(hourlyUnits),
      dailyForecast: (daily ?? DailyDTO()).toDomain(dailyUnits),
    );
  }
}
