import '../../gen/assets.gen.dart';

class HourlyForecastUiState {
  final String forecastImage;
  final String temperatureDegree;
  final String hour;

  const HourlyForecastUiState({
    required this.forecastImage,
    required this.temperatureDegree,
    required this.hour,
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

List<HourlyForecastUiState> dummyHourlyForecast = [
  HourlyForecastUiState(
    forecastImage: 'assets/images/day_clear_sky.png',
    temperatureDegree: '25',
    hour: '09:00',
  ),
  HourlyForecastUiState(
    forecastImage: 'assets/images/day_clear_sky.png',
    temperatureDegree: '26',
    hour: '10:00',
  ),
  HourlyForecastUiState(
    forecastImage: 'assets/images/day_clear_sky.png',
    temperatureDegree: '27',
    hour: '11:00',
  ),
  HourlyForecastUiState(
    forecastImage: 'assets/images/day_clear_sky.png',
    temperatureDegree: '24',
    hour: '12:00',
  ),
  HourlyForecastUiState(
    forecastImage: 'assets/images/day_clear_sky.png',
    temperatureDegree: '23',
    hour: '13:00',
  ),
  HourlyForecastUiState(
    forecastImage: 'assets/images/day_clear_sky.png',
    temperatureDegree: '22',
    hour: '14:00',
  ),
  HourlyForecastUiState(
    forecastImage: 'assets/images/day_clear_sky.png',
    temperatureDegree: '24',
    hour: '15:00',
  ),
];

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
