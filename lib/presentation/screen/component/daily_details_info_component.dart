import 'package:flutter/material.dart';
import '../daily_forecast_state.dart';
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
            'Next 7 days',
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
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          padding: const EdgeInsets.symmetric(vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: const Color(0x14FFFFFF), width: 1),
            color: const Color(0xB2060414),
          ),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
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
    );
  }
}