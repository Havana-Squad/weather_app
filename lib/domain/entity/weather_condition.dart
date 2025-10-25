import '../../gen/assets.gen.dart';

enum WeatherCondition {
  clearSky,
  mainlyClear,
  partlyCloudy,
  overcast,
  fog,
  depositingRimeFog,
  drizzleLight,
  drizzleModerate,
  drizzleDenseIntensity,
  freezingDrizzleLight,
  freezingDrizzleDenseIntensity,
  rainSlight,
  rainModerate,
  rainHeavyIntensity,
  freezingRainLight,
  freezingRainHeavyIntensity,
  snowFallSlight,
  snowFallModerate,
  snowFallHeavyIntensity,
  snowGrains,
  rainShowersSlight,
  rainShowersModerate,
  rainShowersViolent,
  snowShowersSlight,
  snowShowersHeavy,
  thunderstormSlightOrModerate,
  thunderstormWithSlight,
  thunderstormWithHeavyHail,
}

class WeatherImageMapper {
  static WeatherCondition getWeatherCondition(int code) {
    switch (code) {
      case 0:
        return WeatherCondition.clearSky;
      case 1:
        return WeatherCondition.mainlyClear;
      case 2:
        return WeatherCondition.partlyCloudy;
      case 3:
        return WeatherCondition.overcast;
      case 45:
        return WeatherCondition.fog;
      case 48:
        return WeatherCondition.depositingRimeFog;
      case 51:
        return WeatherCondition.drizzleLight;
      case 53:
        return WeatherCondition.drizzleModerate;
      case 55:
        return WeatherCondition.drizzleDenseIntensity;
      case 56:
        return WeatherCondition.freezingDrizzleLight;
      case 57:
        return WeatherCondition.freezingDrizzleDenseIntensity;
      case 61:
        return WeatherCondition.rainSlight;
      case 63:
        return WeatherCondition.rainModerate;
      case 65:
        return WeatherCondition.rainHeavyIntensity;
      case 66:
        return WeatherCondition.freezingRainLight;
      case 67:
        return WeatherCondition.freezingRainHeavyIntensity;
      case 71:
        return WeatherCondition.snowFallSlight;
      case 73:
        return WeatherCondition.snowFallModerate;
      case 75:
        return WeatherCondition.snowFallHeavyIntensity;
      case 77:
        return WeatherCondition.snowGrains;
      case 80:
        return WeatherCondition.rainShowersSlight;
      case 81:
        return WeatherCondition.rainShowersModerate;
      case 82:
        return WeatherCondition.rainShowersViolent;
      case 85:
        return WeatherCondition.snowShowersSlight;
      case 86:
        return WeatherCondition.snowShowersHeavy;
      case 95:
        return WeatherCondition.thunderstormSlightOrModerate;
      case 96:
        return WeatherCondition.thunderstormWithSlight;
      case 99:
        return WeatherCondition.thunderstormWithHeavyHail;
      default:
        return WeatherCondition.clearSky;
    }
  }

  static AssetGenImage getWeatherImage(WeatherCondition condition, bool isDay) {
    switch (condition) {
      case WeatherCondition.clearSky:
        return isDay ? Assets.images.dayClearSky : Assets.images.nightClearSky;

      case WeatherCondition.mainlyClear:
        return isDay
            ? Assets.images.dayMainlyClear
            : Assets.images.nightMainlyClear;

      case WeatherCondition.partlyCloudy:
        return isDay
            ? Assets.images.dayPartlyCloudy
            : Assets.images.nightPartlyCloudy;

      case WeatherCondition.overcast:
        return isDay ? Assets.images.dayOvercast : Assets.images.nightOvercast;

      case WeatherCondition.fog:
        return isDay ? Assets.images.dayFog : Assets.images.nightFog;

      case WeatherCondition.depositingRimeFog:
        return isDay
            ? Assets.images.dayDepositingRimeFog
            : Assets.images.nightDepositingRimeFog;

      case WeatherCondition.drizzleLight:
        return isDay
            ? Assets.images.dayDrizzleLight
            : Assets.images.nightDrizzleLight;

      case WeatherCondition.drizzleModerate:
        return isDay
            ? Assets.images.dayDrizzleModerate
            : Assets.images.nightDrizzleModerate;

      case WeatherCondition.drizzleDenseIntensity:
        return isDay
            ? Assets.images.dayDrizzleIntensity
            : Assets.images.nightDrizzleIntensity;

      case WeatherCondition.freezingDrizzleLight:
        return isDay
            ? Assets.images.dayFreezingDrizzleLight
            : Assets.images.nightFreezingDrizzleLight;

      case WeatherCondition.freezingDrizzleDenseIntensity:
        return isDay
            ? Assets.images.dayFreezingDrizzleIntensity
            : Assets.images.nightFreezingDrizzleIntensity;

      case WeatherCondition.rainSlight:
        return isDay
            ? Assets.images.dayRainSlight
            : Assets.images.nightRainSlight;

      case WeatherCondition.rainModerate:
        return isDay
            ? Assets.images.dayRainModerate
            : Assets.images.nightRainModerate;

      case WeatherCondition.rainHeavyIntensity:
        return isDay
            ? Assets.images.dayRainIntensity
            : Assets.images.nightRainIntensity;

      case WeatherCondition.freezingRainLight:
        return isDay
            ? Assets.images.dayFreezingLight
            : Assets.images.nightFreezingLight;

      case WeatherCondition.freezingRainHeavyIntensity:
        return isDay
            ? Assets.images.dayFreezingDrizzleLight
            : Assets.images.nightFreezingHeavy;

      case WeatherCondition.snowFallSlight:
        return isDay
            ? Assets.images.daySnowFallLight
            : Assets.images.nightSnowFallLight;

      case WeatherCondition.snowFallModerate:
        return isDay
            ? Assets.images.daySnowFallModerate
            : Assets.images.nightSnowFallModerate;

      case WeatherCondition.snowFallHeavyIntensity:
        return isDay
            ? Assets.images.daySnowFallIntensity
            : Assets.images.nightSnowFallIntensity;

      case WeatherCondition.snowGrains:
        return isDay
            ? Assets.images.daySnowGrains
            : Assets.images.nightSnowGrains;

      case WeatherCondition.rainShowersSlight:
        return isDay
            ? Assets.images.dayRainShowerSlight
            : Assets.images.nightRainShowerSlight;

      case WeatherCondition.rainShowersModerate:
        return isDay
            ? Assets.images.dayRainShowerModerate
            : Assets.images.nightRainShowerModerate;

      case WeatherCondition.rainShowersViolent:
        return isDay
            ? Assets.images.dayRainShowerViolent
            : Assets.images.nightRainShowerViolent;

      case WeatherCondition.snowShowersSlight:
        return isDay
            ? Assets.images.daySnowShowerSlight
            : Assets.images.nightSnowShowerSlight;

      case WeatherCondition.snowShowersHeavy:
        return isDay
            ? Assets.images.daySnowShowerHeavy
            : Assets.images.nightSnowShowerHeavy;

      case WeatherCondition.thunderstormSlightOrModerate:
        return isDay
            ? Assets.images.dayThunderstromSlightOrModerate
            : Assets.images.nightThunderstromSlightOrModerate;

      case WeatherCondition.thunderstormWithSlight:
        return isDay
            ? Assets.images.dayThunderstromWithSlightHail
            : Assets.images.nightThunderstromWithSlightHail;

      case WeatherCondition.thunderstormWithHeavyHail:
        return isDay
            ? Assets.images.dayThunderstromWithHeavyHail
            : Assets.images.nightThunderstromWithHeavyHail;
    }
  }

  static String getWeatherDescription(WeatherCondition condition) {
    switch (condition) {
      case WeatherCondition.clearSky:
        return "Clear Sky";
      case WeatherCondition.mainlyClear:
        return "Mainly Clear";
      case WeatherCondition.partlyCloudy:
        return "Partly Cloudy";
      case WeatherCondition.overcast:
        return "Overcast";
      case WeatherCondition.fog:
        return "Fog";
      case WeatherCondition.depositingRimeFog:
        return "Depositing Rime Fog";
      case WeatherCondition.drizzleLight:
        return "Light Drizzle";
      case WeatherCondition.drizzleModerate:
        return "Moderate Drizzle";
      case WeatherCondition.drizzleDenseIntensity:
        return "Dense Drizzle";
      case WeatherCondition.freezingDrizzleLight:
        return "Light Freezing Drizzle";
      case WeatherCondition.freezingDrizzleDenseIntensity:
        return "Dense Freezing Drizzle";
      case WeatherCondition.rainSlight:
        return "Light Rain";
      case WeatherCondition.rainModerate:
        return "Moderate Rain";
      case WeatherCondition.rainHeavyIntensity:
        return "Heavy Rain";
      case WeatherCondition.freezingRainLight:
        return "Light Freezing Rain";
      case WeatherCondition.freezingRainHeavyIntensity:
        return "Heavy Freezing Rain";
      case WeatherCondition.snowFallSlight:
        return "Light Snow";
      case WeatherCondition.snowFallModerate:
        return "Moderate Snow";
      case WeatherCondition.snowFallHeavyIntensity:
        return "Heavy Snow";
      case WeatherCondition.snowGrains:
        return "Snow Grains";
      case WeatherCondition.rainShowersSlight:
        return "Light Rain Showers";
      case WeatherCondition.rainShowersModerate:
        return "Moderate Rain Showers";
      case WeatherCondition.rainShowersViolent:
        return "Violent Rain Showers";
      case WeatherCondition.snowShowersSlight:
        return "Light Snow Showers";
      case WeatherCondition.snowShowersHeavy:
        return "Heavy Snow Showers";
      case WeatherCondition.thunderstormSlightOrModerate:
        return "Thunderstorm";
      case WeatherCondition.thunderstormWithSlight:
        return "Thunderstorm with Slight Hail";
      case WeatherCondition.thunderstormWithHeavyHail:
        return "Thunderstorm with Heavy Hail";
    }
  }
}

extension WeatherConditionExtension on WeatherCondition {
  AssetGenImage toImage(bool isDay) {
    return WeatherImageMapper.getWeatherImage(this, isDay);
  }

  String toDescription() {
    return WeatherImageMapper.getWeatherDescription(this);
  }
}

extension WeatherCodeExtension on int {
  WeatherCondition toWeatherCondition() {
    return WeatherImageMapper.getWeatherCondition(this);
  }
}
