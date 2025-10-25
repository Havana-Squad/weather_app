import 'package:flutter/material.dart';
import 'package:weather_app/presentation/screen/state/weather_screen_state_mapper.dart';

import '../../../l10n/app_localizations.dart';
import 'daily_details_info.dart';

class DailyDetailsInfoSection extends StatelessWidget {
  final List<DailyForecastUiState> dailyForecast;

  const DailyDetailsInfoSection({super.key, required this.dailyForecast});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            AppLocalizations.of(context)!.daily_forecast_title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.secondaryContainer,
            ),
          ),
        ),
        const SizedBox(height: 24),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          padding: const EdgeInsets.symmetric(vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Theme.of(context).colorScheme.outline, width: 1),
            color: Theme.of(context).colorScheme.surface,
          ),
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemCount: dailyForecast.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => Divider(
              height: 1,
              thickness: 1,
              color: Color(0x14FFFFFF),
            ),
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
    );
  }
}