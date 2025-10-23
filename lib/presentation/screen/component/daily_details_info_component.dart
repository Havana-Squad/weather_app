import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';
import '../weather_screen_state.dart';
import '../daily_forecast_state.dart';
import 'daily_details_info.dart';

class DailyDetailsInfoSection extends StatelessWidget {
  final List<DailyForecastUiState> dailyForecast;

  const DailyDetailsInfoSection({super.key, required this.dailyForecast});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 336,
      height: 435,
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Theme.of(context).colorScheme.outline, width: 1),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              AppLocalizations.of(context)!.daily_forecast_title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.25,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontFamily: 'Urbanist',
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: dailyForecast.length,
              itemBuilder: (context, index) {
                final item = dailyForecast[index];
                return DailyDetailsInfo(
                  day: item.day,
                  forecastImage: item.forecastImage,
                  lowTemperature: item.lowTemperature,
                  highTemperature: item.highTemperature,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}