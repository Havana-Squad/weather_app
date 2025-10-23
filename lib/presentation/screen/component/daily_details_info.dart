import 'package:flutter/material.dart';
import 'package:weather_app/gen/assets.gen.dart';
import 'package:weather_app/presentation/screen/component/temperature_range_card.dart';

class DailyDetailsInfo extends StatelessWidget {
  final String day;
  final AssetGenImage forecastImage;
  final int lowTemperature;
  final int highTemperature;

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
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0x14FFFFFF), width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            child: Text(
              day,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.25,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontFamily: 'Urbanist',
                height: 1.0,
              ),
            ),
          ),
          SizedBox(
            width: 30,
            height: 30,
            child: forecastImage.image(fit: BoxFit.contain),
          ),
          TemperatureRangeCard(
            highTemperature: highTemperature,
            lowTemperature: lowTemperature,
          ),
        ],
      ),
    );
  }
}