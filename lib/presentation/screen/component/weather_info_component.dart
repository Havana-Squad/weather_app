import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WeatherInfoComponent extends StatelessWidget {
  final String iconAsset;
  final String value;
  final String title;

  const WeatherInfoComponent({
    super.key,
    required this.iconAsset,
    required this.value,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108,
      height: 130,
      decoration: BoxDecoration(
        color: Theme
            .of(context)
            .colorScheme
            .surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Theme
              .of(context)
              .colorScheme
              .outline,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconAsset,
              width: 32,
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: Text(
                value,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.25,
                  color: Theme.of(context).colorScheme.onSecondary,
                  fontFamily: 'Urbanist',
                ),
              ),
            ),

            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.25,
                color: Theme
                    .of(context)
                    .colorScheme
                    .onSurfaceVariant,
                fontFamily: 'Urbanist',
              ),
            ),
          ],
        ),
      ),
    );
  }

}