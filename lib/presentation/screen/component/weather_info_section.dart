import 'package:flutter/material.dart';
import 'package:weather_app/presentation/screen/component/weather_info_item.dart';

import '../../../l10n/app_localizations.dart';

class WeatherInfoSection extends StatelessWidget{
  final String wind;
  final String humidity;
  final String rain;
  final String uv;
  final String pressure;
  final String feelsLike;


  const WeatherInfoSection({
    super.key,
    required this.wind,
    required this.humidity,
    required this.rain,
    required this.uv,
    required this.pressure,
    required this.feelsLike,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            WeatherInfoItem(
              iconAsset: 'assets/icons/fast-wind.svg',
              value: '$wind km/h',
              title: AppLocalizations.of(context)!.wind,
            ),
            WeatherInfoItem(
              iconAsset: 'assets/icons/humidity.svg',
              value: '$humidity%',
              title: AppLocalizations.of(context)!.humidity,
            ),
            WeatherInfoItem(
              iconAsset: 'assets/icons/rain.svg',
              value: '$rain%',
              title: AppLocalizations.of(context)!.rain,
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            WeatherInfoItem(
              iconAsset: 'assets/icons/uv-02.svg',
              value: uv,
              title: AppLocalizations.of(context)!.uv_title,
            ),
            WeatherInfoItem(
              iconAsset: 'assets/icons/arrow-down-05.svg',
              value: '$pressure hPa',
              title: AppLocalizations.of(context)!.pressure,
            ),
            WeatherInfoItem(
              iconAsset: 'assets/icons/temperature.svg',
              value: '$feelsLike°C',
              title: AppLocalizations.of(context)!.feelsLike,
            ),
          ],
        )
      ],
    );
  }
}