import 'package:flutter/material.dart';
import 'package:weather_app/presentation/screen/component/temperature_range_card.dart';

class TemperatureInfoCard extends StatelessWidget {
  final String temperatureNumber;
  final String weatherDescription;
  final int highTemperature;
  final int lowTemperature;

  const TemperatureInfoCard({
    super.key,
    required this.temperatureNumber,
    required this.weatherDescription,
    required this.highTemperature,
    required this.lowTemperature,
  });

  @override
  Widget build(BuildContext context) {
    final onSurface = Theme.of(context).colorScheme.onSurface;
    final onSurfaceVariant = Theme.of(context).colorScheme.onSurfaceVariant;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          temperatureNumber,
          style: TextStyle(
            fontSize: 64,
            fontWeight: FontWeight.w600,
            color: onSurface,
            height: 1.0,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          weatherDescription,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: onSurfaceVariant,
            height: 1.0,
          ),
        ),
        const SizedBox(height: 8),
        TemperatureRangeCard(
          highTemperature: highTemperature,
          lowTemperature: lowTemperature,
          backgroundColor: const Color(0x14FFFFFF),
        ),
      ],
    );
  }
}
