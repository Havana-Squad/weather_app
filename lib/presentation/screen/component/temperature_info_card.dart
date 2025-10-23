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
    return Container(
      width: 165,
      height: 143,
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                temperatureNumber,
                style: const TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.25,
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'Urbanist',
                  height: 1.0,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                weatherDescription,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.25,
                  color: Color(0x99FFFFFF),
                  fontFamily: 'Urbanist',
                  height: 1.0,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          TemperatureRangeCard(
            highTemperature: highTemperature,
            lowTemperature: lowTemperature,
          ),
        ],
      ),
    );
  }
}