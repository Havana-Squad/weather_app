import 'package:flutter/material.dart';
import 'package:weather_app/gen/assets.gen.dart';

import 'TemperatureItem.dart';

class TemperatureRangeCard extends StatelessWidget {
  final String highTemperature;
  final String lowTemperature;
  final Color? backgroundColor;

  const TemperatureRangeCard({
    super.key,
    required this.highTemperature,
    required this.lowTemperature,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final onSurfaceVariant = theme.colorScheme.onSurfaceVariant;
    final outline = theme.colorScheme.outline;

    final decoration = backgroundColor != null
        ? BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(100),
          )
        : null;

    return Container(
      height: 35,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: decoration,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TemperatureItem(
            iconAsset: Assets.images.arrowUp,
            temperature: highTemperature,
            color: onSurfaceVariant,
          ),
          Container(
            width: 1,
            height: 14,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: outline,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          TemperatureItem(
            iconAsset: Assets.images.arrowDown,
            temperature: lowTemperature,
            color: onSurfaceVariant,
          ),
        ],
      ),
    );
  }
}
