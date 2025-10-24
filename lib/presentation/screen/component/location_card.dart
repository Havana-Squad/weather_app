import 'package:flutter/material.dart';
import 'package:weather_app/gen/assets.gen.dart';

class LocationCard extends StatelessWidget {
  final String locationName;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;

  const LocationCard({
    super.key,
    required this.locationName,
    this.padding,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    final onSurface = Theme.of(context).colorScheme.onSurface;

    return Container(
      padding: padding,
      alignment: alignment,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Assets.images.location.svg(
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(
              onSurface,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            locationName,
            style: TextStyle(
              color: onSurface,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              height: 1.25,
            ),
          ),
        ],
      ),
    );
  }
}