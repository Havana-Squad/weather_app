import '../domain/repository/location_repository.dart';
import '../domain/repository/weather_repository.dart';
import '../presentation/cubit/weather_cubit.dart';
import 'injection_container.dart';

registerPresentationLayer() {
  sl.registerFactory(
    () => WeatherCubit(sl<WeatherRepository>(), sl<LocationRepository>()),
  );
}
