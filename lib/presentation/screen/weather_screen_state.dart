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

List<HourlyForecastUiState> dummyHourlyForecast = [
  HourlyForecastUiState(
    forecastImage: 'assets/images/day_clear_sky.png',
    temperatureDegree: '25°C',
    hour: '09:00',
  ),
  HourlyForecastUiState(
    forecastImage: 'assets/images/day_clear_sky.png',
    temperatureDegree: '26°C',
    hour: '10:00',
  ),
  HourlyForecastUiState(
    forecastImage: 'assets/images/day_clear_sky.png',
    temperatureDegree: '27°C',
    hour: '11:00',
  ),
  HourlyForecastUiState(
    forecastImage: 'assets/images/day_clear_sky.png',
    temperatureDegree: '24°C',
    hour: '12:00',
  ),
  HourlyForecastUiState(
    forecastImage: 'assets/images/day_clear_sky.png',
    temperatureDegree: '23°C',
    hour: '13:00',
  ),
  HourlyForecastUiState(
    forecastImage: 'assets/images/day_clear_sky.png',
    temperatureDegree: '22°C',
    hour: '14:00',
  ),
  HourlyForecastUiState(
    forecastImage: 'assets/images/day_clear_sky.png',
    temperatureDegree: '24°C',
    hour: '15:00',
  ),
];
