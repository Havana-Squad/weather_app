import 'package:weather_app/gen/assets.gen.dart';

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

List<DailyForecastUiState> dummyDailyForecast = [
  DailyForecastUiState(
    day: 'Thursday',
    forecastImage: Assets.images.dayClearSky,
    lowTemperature: 20,
    highTemperature: 32,
  ),
  DailyForecastUiState(
    day: 'Friday',
    forecastImage: Assets.images.dayOvercast,
    lowTemperature: 20,
    highTemperature: 32,
  ),
  DailyForecastUiState(
    day: 'Saturday',
    forecastImage: Assets.images.dayDrizzleModerate,
    lowTemperature: 19,
    highTemperature: 31,
  ),
  DailyForecastUiState(
    day: 'Sunday',
    forecastImage: Assets.images.dayDrizzleIntensity,
    lowTemperature: 18,
    highTemperature: 30,
  ),
  DailyForecastUiState(
    day: 'Monday',
    forecastImage: Assets.images.dayClearSky,
    lowTemperature: 20,
    highTemperature: 32,
  ),
  DailyForecastUiState(
    day: 'Tuesday',
    forecastImage: Assets.images.dayDrizzleModerate,
    lowTemperature: 20,
    highTemperature: 32,
  ),
  DailyForecastUiState(
    day: 'Wednesday',
    forecastImage: Assets.images.dayDepositingRimeFog,
    lowTemperature: 21,
    highTemperature: 33,
  ),
];