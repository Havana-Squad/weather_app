import 'package:flutter/material.dart';
import 'package:weather_app/gen/assets.gen.dart';
import 'package:weather_app/presentation/screen/component/temperature_range_card.dart';

class DailyDetailsInfo extends StatelessWidget {
  final String day;
  final AssetGenImage forecastImage;
  final String lowTemperature;
  final String highTemperature;

  const DailyDetailsInfo({
    super.key,
    required this.day,
    required this.forecastImage,
    required this.lowTemperature,
    required this.highTemperature,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 61,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            day,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              height: 1.0,
            ),
          ),
          forecastImage.image(fit: BoxFit.contain, width: 30, height: 30),
          TemperatureRangeCard(
            highTemperature: highTemperature,
            lowTemperature: lowTemperature,
          ),
        ],
      ),
    );
  }
}
