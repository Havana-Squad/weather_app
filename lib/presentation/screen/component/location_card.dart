import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LocationCard extends StatelessWidget {
  final String locationName;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;

  const LocationCard({
    super.key,
    this.locationName = 'Khan Younis',
    this.padding,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      alignment: alignment,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/location.svg',
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            locationName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              height: 1.25,
              letterSpacing: 0.25,
              fontFamily: 'Urbanist',
            ),
          ),
        ],
      ),
    );
  }
}