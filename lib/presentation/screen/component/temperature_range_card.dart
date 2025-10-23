import 'package:flutter/material.dart';
import 'package:weather_app/gen/assets.gen.dart';
import 'TemperatureItem.dart';

class TemperatureRangeCard extends StatelessWidget {
  final int highTemperature;
  final int lowTemperature;
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

    return Container(
      height: 35,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: backgroundColor != null
          ? BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(100),
      )
          : null,
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
            color: onSurfaceVariant,
          ),
        ],
      ),
    );
  }
}