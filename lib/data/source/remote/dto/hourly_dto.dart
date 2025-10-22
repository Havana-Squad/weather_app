import 'package:equatable/equatable.dart';
import 'package:weather_app/data/mapper/date_time_mapper.dart';

import '../../../../domain/entity/Weather.dart';
import 'hourly_units_dto.dart';

class HourlyDTO extends Equatable {
  final List<String>? time;
  final List<double>? temperature2m;
  final List<int>? weatherCode;

  const HourlyDTO({
    this.time,
    this.temperature2m,
    this.weatherCode,
  });

  factory HourlyDTO.fromJson(Map<String, dynamic> json) {
    return HourlyDTO(
      time: (json['time'] as List<dynamic>?)?.map((e) => e as String).toList(),
      temperature2m: (json['temperature_2m'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
      weatherCode: (json['weathercode'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );
  }

  @override
  List<Object?> get props => [time, temperature2m, weatherCode];

  HourlyForecast toDomain(HourlyUnitsDTO? hourlyUnits){
    final parsedTimes = (time ?? [])
        .map((t) => parseDateTime(t))
        .toList();

    return HourlyForecast(
      times: parsedTimes,
      temperatures: temperature2m ?? <double>[],
      weatherCodes: weatherCode ?? <int>[],
      units: (hourlyUnits ?? HourlyUnitsDTO()).toDomain(),
    );
  }
}