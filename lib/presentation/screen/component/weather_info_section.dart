import 'package:flutter/material.dart';
import 'package:weather_app/presentation/screen/component/weather_info_item.dart';

import '../../../gen/assets.gen.dart';
import '../../../l10n/app_localizations.dart';

class WeatherInfoSection extends StatelessWidget{
  final String wind;
  final String humidity;
  final String rain;
  final String uv;
  final String pressure;
  final String feelsLike;


  const WeatherInfoSection({
    super.key,
    required this.wind,
    required this.humidity,
    required this.rain,
    required this.uv,
    required this.pressure,
    required this.feelsLike,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double maxWidth = constraints.hasBoundedWidth
            ? constraints.maxWidth
            : MediaQuery.of(context).size.width;

        final double horizontalPadding = 16.0;
        final double horizontalSpacing = 12.0;
        final double verticalSpacing = 8.0;

        int columns;
        if (maxWidth >= 1600) {
          columns = 6;
        } else if (maxWidth >= 1200) {
          columns = 5;
        } else if (maxWidth >= 800) {
          columns = 4;
        } else if (maxWidth >= 340) {
          columns = 3;
        } else if (maxWidth >= 240) {
          columns = 2;
        } else {
          columns = 1;
        }

        final double totalSpacing = (columns - 1) * horizontalSpacing + (horizontalPadding * 2);
        final double itemWidth = (maxWidth - totalSpacing) / columns;

        // Prepare items once
        final items = [
          WeatherInfoItem(
            iconAsset: Assets.icons.fastWind,
            value: wind,
            title: AppLocalizations.of(context)!.wind,
          ),
          WeatherInfoItem(
            iconAsset: Assets.icons.humidity,
            value: humidity,
            title: AppLocalizations.of(context)!.humidity,
          ),
          WeatherInfoItem(
            iconAsset: Assets.icons.rain,
            value: rain,
            title: AppLocalizations.of(context)!.rain,
          ),
          WeatherInfoItem(
            iconAsset: Assets.icons.uv02,
            value: uv,
            title: AppLocalizations.of(context)!.uv_title,
          ),
          WeatherInfoItem(
            iconAsset: Assets.icons.arrowDown05,
            value: pressure,
            title: AppLocalizations.of(context)!.pressure,
          ),
          WeatherInfoItem(
            iconAsset: Assets.icons.temperature,
            value: feelsLike,
            title: AppLocalizations.of(context)!.feelsLike,
          ),
        ];

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Center(
            child: Wrap(
              spacing: horizontalSpacing,
              runSpacing: verticalSpacing,
              alignment: WrapAlignment.center,
              children: items.map((widget) {
                return SizedBox(
                  width: itemWidth,
                  child: widget,
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}