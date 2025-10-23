// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get feelsLike => 'يبدو كأنه';

  @override
  String get pressure => 'الضغط';

  @override
  String get uv_title => 'مؤشر الأشعة فوق البنفسجية';

  @override
  String get rain => 'الأمطار';

  @override
  String get humidity => 'الرطوبة';

  @override
  String get wind => 'الرياح';

  @override
  String get today => 'اليوم';

  @override
  String get daily_forecast_title => 'سبع ايام القادمين';
}
