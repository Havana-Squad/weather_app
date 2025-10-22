import 'package:equatable/equatable.dart';

import '../../../../domain/entity/Weather.dart';

class DailyUnitsDTO extends Equatable {
  final String? time;
  final String? weatherCode;
  final String? temperature2mMax;
  final String? temperature2mMin;

  const DailyUnitsDTO({
    this.time,
    this.weatherCode,
    this.temperature2mMax,
    this.temperature2mMin,
  });

  factory DailyUnitsDTO.fromJson(Map<String, dynamic> json) {
    return DailyUnitsDTO(
      time: json['time'] as String?,
      weatherCode: json['weather_code'] as String?,
      temperature2mMax: json['temperature_2m_max'] as String?,
      temperature2mMin: json['temperature_2m_min'] as String?,
    );
  }

  @override
  List<Object?> get props => [time, weatherCode, temperature2mMax, temperature2mMin];

  DailyUnits toDomain() {
    return DailyUnits(
      time: time ?? '',
      weatherCode: weatherCode ?? '',
      temperatureMax: temperature2mMax ?? '',
      temperatureMin: temperature2mMin ?? '',
    );
  }
}