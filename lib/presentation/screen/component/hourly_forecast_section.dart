import 'package:flutter/material.dart';
import 'package:weather_app/presentation/screen/component/hourly_forecast_item.dart';

import '../../../l10n/app_localizations.dart';
import '../weather_screen_state.dart';

class HourlyForecastSection extends StatelessWidget {
  final List<HourlyForecastUiState> hourlyForecast;

  const HourlyForecastSection({
    super.key,
    required this.hourlyForecast,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            AppLocalizations.of(context)!.today,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.25,
              color: Theme.of(context).colorScheme.secondaryContainer,
              fontFamily: 'Urbanist',
            ),
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemCount: hourlyForecast.length,
            itemBuilder: (context, index) {
              final item = hourlyForecast[index];
              return HourlyForecastItem(forecast: item);
            },
          ),
        ),
      ],
    );
  }
}