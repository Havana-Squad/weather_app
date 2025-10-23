import 'package:equatable/equatable.dart';

import '../../../../domain/entity/Weather.dart';

class HourlyUnitsDTO extends Equatable {
  final String? time;
  final String? temperature;
  final String? weatherCode;

  const HourlyUnitsDTO({
    this.time,
    this.temperature,
    this.weatherCode,
  });

  factory HourlyUnitsDTO.fromJson(Map<String, dynamic> json) {
    return HourlyUnitsDTO(
      time: json['time'] as String?,
      temperature: json['temperature_2m'] as String?,
      weatherCode: json['weathercode'] as String?,
    );
  }

  @override
  List<Object?> get props => [time, temperature, weatherCode];

  HourlyUnits toDomain() {
    return HourlyUnits(
      time: time ?? '',
      temperature: temperature ?? '',
      weatherCode: weatherCode ?? '',
    );
  }
}