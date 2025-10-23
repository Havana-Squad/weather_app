import 'package:flutter/material.dart';
import 'package:weather_app/gen/assets.gen.dart';

import 'TemperatureItem.dart';

class TemperatureRangeCard extends StatelessWidget {
  final int highTemperature;
  final int lowTemperature;

  const TemperatureRangeCard({
    super.key,
    required this.highTemperature,
    required this.lowTemperature,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final onSecondary = theme.colorScheme.onSecondary;
    final outline = theme.colorScheme.outline;

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TemperatureItem(
          iconAsset: Assets.images.arrowUp,
          temperature: highTemperature,
          color: onSecondary,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            width: 1,
            height: 14,
            decoration: BoxDecoration(
              color: outline,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),

        TemperatureItem(
          iconAsset: Assets.images.arrowDown,
          temperature: lowTemperature,
          color: onSecondary,
        ),
      ],
    );
  }
}