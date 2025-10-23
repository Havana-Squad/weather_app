import 'package:equatable/equatable.dart';

import '../../../../domain/entity/Weather.dart';

class DailyUnitsDTO extends Equatable {
  final String? time;
  final String? weatherCode;
  final String? maxTemperature;
  final String? minTemperature;

  const DailyUnitsDTO({
    this.time,
    this.weatherCode,
    this.maxTemperature,
    this.minTemperature,
  });

  factory DailyUnitsDTO.fromJson(Map<String, dynamic> json) {
    return DailyUnitsDTO(
      time: json['time'] as String?,
      weatherCode: json['weather_code'] as String?,
      maxTemperature: json['temperature_2m_max'] as String?,
      minTemperature: json['temperature_2m_min'] as String?,
    );
  }

  @override
  List<Object?> get props => [time, weatherCode, maxTemperature, minTemperature];

  DailyUnits toDomain() {
    return DailyUnits(
      time: time ?? '',
      weatherCode: weatherCode ?? '',
      temperatureMax: maxTemperature ?? '',
      temperatureMin: minTemperature ?? '',
    );
  }
}