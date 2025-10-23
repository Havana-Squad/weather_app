import 'package:equatable/equatable.dart';

class Weather extends Equatable {
  final double latitude;
  final double longitude;
  final double generationTimeMs;
  final int utcOffsetSeconds;
  final String timezone;
  final String timezoneAbbreviation;
  final double elevation;
  final CurrentWeather currentWeather;
  final HourlyForecast hourlyForecast;
  final DailyForecast dailyForecast;

  const Weather({
    required this.latitude,
    required this.longitude,
    required this.generationTimeMs,
    required this.utcOffsetSeconds,
    required this.timezone,
    required this.timezoneAbbreviation,
    required this.elevation,
    required this.currentWeather,
    required this.hourlyForecast,
    required this.dailyForecast,
  });

  @override
  List<Object> get props => [
    latitude,
    longitude,
    generationTimeMs,
    utcOffsetSeconds,
    timezone,
    timezoneAbbreviation,
    elevation,
    currentWeather,
    hourlyForecast,
    dailyForecast,
  ];
}


class CurrentWeatherUnits extends Equatable {
  final String time;
  final String interval;
  final String temperature;
  final String humidity;
  final String apparentTemperature;
  final String precipitationProbability;
  final String pressureMsl;
  final String windSpeed;
  final String isDay;
  final String rain;
  final String uvIndex;
  final String weatherCode;

  const CurrentWeatherUnits({
    required this.time,
    required this.interval,
    required this.temperature,
    required this.humidity,
    required this.apparentTemperature,
    required this.precipitationProbability,
    required this.pressureMsl,
    required this.windSpeed,
    required this.isDay,
    required this.rain,
    required this.uvIndex,
    required this.weatherCode,
  });

  @override
  List<Object> get props => [
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
}

class CurrentWeather extends Equatable {
  final DateTime time;
  final int interval;
  final double temperature;
  final int humidity;
  final double apparentTemperature;
  final int precipitationProbability;
  final double pressureMsl;
  final double windSpeed;
  final bool isDay;
  final double rain;
  final double uvIndex;
  final int weatherCode;
  final CurrentWeatherUnits units;

  const CurrentWeather({
    required this.time,
    required this.interval,
    required this.temperature,
    required this.humidity,
    required this.apparentTemperature,
    required this.precipitationProbability,
    required this.pressureMsl,
    required this.windSpeed,
    required this.isDay,
    required this.rain,
    required this.uvIndex,
    required this.weatherCode,
    required this.units,
  });

  @override
  List<Object> get props => [
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
    units,
  ];
}

class HourlyUnits extends Equatable {
  final String time;
  final String temperature;
  final String weatherCode;

  const HourlyUnits({
    required this.time,
    required this.temperature,
    required this.weatherCode,
  });

  @override
  List<Object> get props => [time, temperature, weatherCode];
}

class HourlyForecast extends Equatable {
  final List<DateTime> times;
  final List<double> temperatures;
  final List<int> weatherCodes;
  final HourlyUnits units;

  const HourlyForecast({
    required this.times,
    required this.temperatures,
    required this.weatherCodes,
    required this.units,
  });

  @override
  List<Object> get props => [times, temperatures, weatherCodes, units];
}

class DailyUnits extends Equatable {
  final String time;
  final String weatherCode;
  final String temperatureMax;
  final String temperatureMin;

  const DailyUnits({
    required this.time,
    required this.weatherCode,
    required this.temperatureMax,
    required this.temperatureMin,
  });

  @override
  List<Object> get props => [time, weatherCode, temperatureMax, temperatureMin];
}

class DailyForecast extends Equatable {
  final List<DateTime> dates;
  final List<int> weatherCodes;
  final List<double> maxTemperatures;
  final List<double> minTemperatures;
  final DailyUnits units;

  const DailyForecast({
    required this.dates,
    required this.weatherCodes,
    required this.maxTemperatures,
    required this.minTemperatures,
    required this.units,
  });

  @override
  List<Object> get props => [
    dates,
    weatherCodes,
    maxTemperatures,
    minTemperatures,
    units,
  ];
}