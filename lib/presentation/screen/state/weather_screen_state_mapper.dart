import 'package:intl/intl.dart' show DateFormat;
import 'package:weather_app/domain/entity/weather_condition.dart';
import '../../../domain/entity/Weather.dart';
import '../../../gen/assets.gen.dart';

extension WeatherScreenStateMapper on Weather {
  WeatherScreenState toDomain() {
    final weather = this;
    final currentCondition = weather.currentWeather.weatherCode
        .toWeatherCondition();

    return WeatherScreenState(
      cityName: weather.timezone,
      currentTemperature:
          '${weather.currentWeather.temperature.round()} ${weather.currentWeather.units.temperature}',
      maxTemperature:
          '${weather.dailyForecast.maxTemperatures.first.round()} ${weather.currentWeather.units.temperature}',
      minTemperature:
          '${weather.dailyForecast.minTemperatures.first.round()} ${weather.currentWeather.units.temperature}',
      weatherCondition: currentCondition.toDescription(),
      windSpeed:
          '${weather.currentWeather.windSpeed.round()} ${weather.currentWeather.units.windSpeed}',
      relativeHumidity:
          '${weather.currentWeather.humidity} ${weather.currentWeather.units.humidity}',
      precipitationProbability:
          '${weather.currentWeather.precipitationProbability} ${weather.currentWeather.units.precipitationProbability}',
      ultraVioletIndex:
          '${weather.currentWeather.uvIndex.round()} ${weather.currentWeather.units.uvIndex}',
      airPressure:
          '${weather.currentWeather.pressureMsl.round()} ${weather.currentWeather.units.pressureMsl}',
      apparentTemperature:
          '${weather.currentWeather.apparentTemperature.round()} ${weather.currentWeather.units.temperature}',
      currentWeatherImage: currentCondition.toImage(
        weather.currentWeather.isDay,
      ),
      hourlyForecast: _mapHourlyForecast(weather.hourlyForecast),
      dailyForecast: _mapDailyForecast(weather.dailyForecast),
      isDay: weather.currentWeather.isDay,
    );
  }
}

List<HourlyForecastUiState> _mapHourlyForecast(
    HourlyForecast hourlyForecast,
    ) {
  final List<HourlyForecastUiState> result = [];
  final itemCount = hourlyForecast.times.length > 24
      ? 24
      : hourlyForecast.times.length;

  for (int i = 0; i < itemCount; i++) {
    final condition = hourlyForecast.weatherCodes[i].toWeatherCondition();
    final isDay =
        hourlyForecast.times[i].hour >= 6 &&
            hourlyForecast.times[i].hour < 18;

    result.add(
      HourlyForecastUiState(
        hour: _formatTime(hourlyForecast.times[i]),
        forecastImage: condition.toImage(isDay),
        temperatureDegree: '${hourlyForecast.temperatures[i].round()}°',
      ),
    );
  }

  return result;
}

List<DailyForecastUiState> _mapDailyForecast(
    DailyForecast dailyForecast,
    ) {
  final List<DailyForecastUiState> result = [];

  for (int i = 1; i < dailyForecast.dates.length; i++) {
    final condition = dailyForecast.weatherCodes[i].toWeatherCondition();

    result.add(
      DailyForecastUiState(
        day: _formatDay(dailyForecast.dates[i]),
        forecastImage: condition.toImage(true),
        lowTemperature: '${dailyForecast.minTemperatures[i].round()}${dailyForecast.units.temperatureMin}',
        highTemperature: '${dailyForecast.maxTemperatures[i].round()}${dailyForecast.units.temperatureMax}',
      ),
    );
  }

  return result;
}

String _formatTime(DateTime time) {
  final hour = time.hour;
  final minute = time.minute;

  final hour12 = hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour);
  final period = hour >= 12 ? 'PM' : 'AM';

  final formattedHour = hour12.toString().padLeft(2, '0');
  final formattedMinute = minute.toString().padLeft(2, '0');

  return '$formattedHour:$formattedMinute $period';
}

String _formatDay(DateTime time) {
  final now = DateTime.now();
  final tomorrow = now.add(const Duration(days: 1));

  if (time.year == now.year &&
      time.month == now.month &&
      time.day == now.day) {
    return 'Today';
  } else if (time.year == tomorrow.year &&
      time.month == tomorrow.month &&
      time.day == tomorrow.day) {
    return 'Tomorrow';
  }

  return DateFormat('EEEE').format(time);
}

class WeatherScreenState {
  final String cityName;
  final String currentTemperature;
  final String maxTemperature;
  final String minTemperature;
  final String weatherCondition;
  final String windSpeed;
  final String relativeHumidity;
  final String precipitationProbability;
  final String ultraVioletIndex;
  final String airPressure;
  final String apparentTemperature;
  final AssetGenImage currentWeatherImage;
  final List<HourlyForecastUiState> hourlyForecast;
  final List<DailyForecastUiState> dailyForecast;
  final bool isDay;

  WeatherScreenState({
    this.cityName = '',
    this.currentTemperature = '',
    this.maxTemperature = '',
    this.minTemperature = '',
    this.weatherCondition = '',
    this.windSpeed = '',
    this.relativeHumidity = '',
    this.precipitationProbability = '',
    this.ultraVioletIndex = '',
    this.airPressure = '',
    this.apparentTemperature = '',
    AssetGenImage? currentWeatherImage,
    this.hourlyForecast = const [],
    this.dailyForecast = const [],
    this.isDay = true,
  }) : currentWeatherImage = currentWeatherImage ?? Assets.images.dayFog;
}

class HourlyForecastUiState {
  final String hour;
  final AssetGenImage forecastImage;
  final String temperatureDegree;

  const HourlyForecastUiState({
    required this.hour,
    required this.forecastImage,
    required this.temperatureDegree,
  });
}

class DailyForecastUiState {
  final String day;
  final AssetGenImage forecastImage;
  final String lowTemperature;
  final String highTemperature;

  const DailyForecastUiState({
    required this.day,
    required this.forecastImage,
    required this.lowTemperature,
    required this.highTemperature,
  });
}
