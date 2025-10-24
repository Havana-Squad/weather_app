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
              color: Theme.of(context).colorScheme.secondaryContainer,
            ),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
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