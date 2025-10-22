import 'package:equatable/equatable.dart';

import '../../../../domain/entity/Weather.dart';
import '../../../mapper/date_time_mapper.dart';
import 'daily_units_dto.dart';

class DailyDTO extends Equatable {
  final List<String>? time;
  final List<int>? weatherCode;
  final List<double>? temperature2mMax;
  final List<double>? temperature2mMin;

  const DailyDTO({
    this.time,
    this.weatherCode,
    this.temperature2mMax,
    this.temperature2mMin,
  });

  factory DailyDTO.fromJson(Map<String, dynamic> json) {
    return DailyDTO(
      time: (json['time'] as List<dynamic>?)?.map((e) => e as String).toList(),
      weatherCode: (json['weather_code'] as List<dynamic>?)?.map((e) => e as int).toList(),
      temperature2mMax: (json['temperature_2m_max'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
      temperature2mMin: (json['temperature_2m_min'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
    );
  }

  @override
  List<Object?> get props => [time, weatherCode, temperature2mMax, temperature2mMin];

  DailyForecast toDomain(DailyUnitsDTO? dailyUnits) {
    final datesList = (time ?? <String>[])
        .map((t) => parseDate(t))
        .toList();

    return DailyForecast(
      dates: datesList,
      weatherCodes: List<int>.from(weatherCode ?? <int>[]),
      maxTemperatures: List<double>.from(temperature2mMax ?? <double>[]),
      minTemperatures: List<double>.from(temperature2mMin ?? <double>[]),
      units: (dailyUnits ?? DailyUnitsDTO()).toDomain(),
    );
  }
}