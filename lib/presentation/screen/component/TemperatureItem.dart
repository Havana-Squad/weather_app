import 'package:flutter/material.dart';
import 'package:weather_app/gen/assets.gen.dart';

class TemperatureItem extends StatelessWidget {
  final SvgGenImage iconAsset;
  final String temperature;
  final Color color;

  const TemperatureItem({
    super.key,
    required this.iconAsset,
    required this.temperature,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: iconAsset.svg(
            width: 16,
            height: 16,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
          ),
        ),
        Text(
          temperature,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            height: 1.0,
            color: color,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
