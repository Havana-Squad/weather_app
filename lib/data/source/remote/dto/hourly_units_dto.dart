import 'package:equatable/equatable.dart';

import '../../../../domain/entity/Weather.dart';

class HourlyUnitsDTO extends Equatable {
  final String? time;
  final String? temperature2m;
  final String? weatherCode;

  const HourlyUnitsDTO({
    this.time,
    this.temperature2m,
    this.weatherCode,
  });

  factory HourlyUnitsDTO.fromJson(Map<String, dynamic> json) {
    return HourlyUnitsDTO(
      time: json['time'] as String?,
      temperature2m: json['temperature_2m'] as String?,
      weatherCode: json['weathercode'] as String?,
    );
  }

  @override
  List<Object?> get props => [time, temperature2m, weatherCode];

  HourlyUnits toDomain() {
    return HourlyUnits(
      time: time ?? '',
      temperature: temperature2m ?? '',
      weatherCode: weatherCode ?? '',
    );
  }
}