import 'package:intl/intl.dart' show DateFormat;
import 'package:weather_app/domain/entity/weather_condition.dart';
import '../../../domain/entity/Weather.dart';
import '../../../gen/assets.gen.dart';


class WeatherScreenStateMapper {
  static WeatherScreenState fromDomain(Weather weather, String cityName) {
    final currentCondition = weather.currentWeather.weatherCode.toWeatherCondition();

    return WeatherScreenState(
      cityName: cityName,
      currentTemperature: '${weather.currentWeather.temperature.round()}°',
      maxTemperature: '${weather.dailyForecast.maxTemperatures.first.round()}°',
      minTemperature: '${weather.dailyForecast.minTemperatures.first.round()}°',
      weatherCondition: currentCondition.toDescription(),
      windSpeed: '${weather.currentWeather.windSpeed.round()} KM/h',
      relativeHumidity: '${weather.currentWeather.humidity}%',
      precipitationProbability: '${weather.currentWeather.precipitationProbability}%',
      ultraVioletIndex: weather.currentWeather.uvIndex.round().toString(),
      airPressure: '${weather.currentWeather.pressureMsl.round()} hPa',
      apparentTemperature: '${weather.currentWeather.apparentTemperature.round()}°',
      currentWeatherImage: currentCondition.toImage(weather.currentWeather.isDay),
      hourlyForecast: _mapHourlyForecast(weather.hourlyForecast),
      dailyForecast: _mapDailyForecast(weather.dailyForecast),
      isDay: weather.currentWeather.isDay,
    );
  }

  static List<HourlyForecastUiState> _mapHourlyForecast(
      HourlyForecast hourlyForecast,
      ) {
    final List<HourlyForecastUiState> result = [];
    final itemCount = hourlyForecast.times.length > 24 ? 24 : hourlyForecast.times.length;

    for (int i = 0; i < itemCount; i++) {
      final condition = hourlyForecast.weatherCodes[i].toWeatherCondition();
      final isDay = hourlyForecast.times[i].hour >= 6 &&
          hourlyForecast.times[i].hour < 18;

      result.add(HourlyForecastUiState(
        hour: _formatTime(hourlyForecast.times[i]),
        forecastImage: condition.toImage(isDay),
        temperatureDegree: '${hourlyForecast.temperatures[i].round()}°',
      ));
    }

    return result;
  }

  static List<DailyForecastUiState> _mapDailyForecast(
      DailyForecast dailyForecast,
      ) {
    final List<DailyForecastUiState> result = [];

    for (int i = 1; i < dailyForecast.dates.length; i++) {
      final condition = dailyForecast.weatherCodes[i].toWeatherCondition();

      result.add(DailyForecastUiState(
        day: _formatDay(dailyForecast.dates[i]),
        forecastImage: condition.toImage(true),
        lowTemperature: dailyForecast.minTemperatures[i].round(),
        highTemperature: dailyForecast.maxTemperatures[i].round(),
      ));
    }

    return result;
  }

  static String _formatTime(DateTime time) {
    final hour = time.hour;
    final minute = time.minute;

    final hour12 = hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour);
    final period = hour >= 12 ? 'PM' : 'AM';

    final formattedHour = hour12.toString().padLeft(2, '0');
    final formattedMinute = minute.toString().padLeft(2, '0');

    return '$formattedHour:$formattedMinute $period';
  }

  static String _formatDay(DateTime time) {
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

  const WeatherScreenState({
    required this.cityName,
    required this.currentTemperature,
    required this.maxTemperature,
    required this.minTemperature,
    required this.weatherCondition,
    required this.windSpeed,
    required this.relativeHumidity,
    required this.precipitationProbability,
    required this.ultraVioletIndex,
    required this.airPressure,
    required this.apparentTemperature,
    required this.currentWeatherImage,
    required this.hourlyForecast,
    required this.dailyForecast,
    required this.isDay,
  });
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
  final int lowTemperature;
  final int highTemperature;

  const DailyForecastUiState({
    required this.day,
    required this.forecastImage,
    required this.lowTemperature,
    required this.highTemperature,
  });
}