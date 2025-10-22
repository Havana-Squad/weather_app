import 'package:dio/dio.dart';

import '../data/repository/location_repository_impl.dart';
import '../data/repository/weather_repository_impl.dart';
import '../data/source/remote/service/weather_api_service.dart';
import '../domain/repository/location_repository.dart';
import '../domain/repository/weather_repository.dart';
import 'injection_container.dart';

Future<void> registerDataLayer() async {
  sl.registerLazySingleton<WeatherRepository>(
    () => WeatherRepositoryImpl(apiService: sl()),
  );
  sl.registerLazySingleton<WeatherApiService>(() => WeatherApiService(dio: sl()));
  sl.registerLazySingleton<Dio>(() => Dio());
  sl.registerLazySingleton<LocationRepository>(() => LocationRepositoryImpl());
}
