import 'package:flutter/material.dart';

class HourlyForecastItem extends StatelessWidget {
  final String forecastImage;
  final String temperatureDegree;
  final String hour;

  const HourlyForecastItem({
    super.key,
    required this.forecastImage,
    required this.temperatureDegree,
    required this.hour,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: SizedBox(
        width: 88,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 12),
              height: 120,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: Theme.of(context).colorScheme.outline,
                    width: 1
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  forecastImage,
                  width: 64,
                  height: 60,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 16),
                Text(
                  temperatureDegree,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.25,
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontFamily: 'Urbanist',
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  hour,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.25,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontFamily: 'Urbanist',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}