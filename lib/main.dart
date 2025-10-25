import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:weather_app/presentation/cubit/weather_cubit.dart';
import 'package:weather_app/presentation/design_system/theme/app_themes.dart';
import 'package:weather_app/presentation/screen/weather_screen.dart';

import 'di/injection_container.dart';
import 'l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: DayTheme().themeData,
      darkTheme: NightTheme().themeData,
      themeMode: ThemeMode.system,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      title: 'my weather app',
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => sl<WeatherCubit>()..start(),
        child: const WeatherScreen(),
      ),
    );
  }
}