// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get feelsLike => 'Feels like';

  @override
  String get pressure => 'Pressure';

  @override
  String get uv_title => 'UV Index';

  @override
  String get rain => 'Rain';

  @override
  String get humidity => 'Humidity';

  @override
  String get wind => 'Wind';
}
