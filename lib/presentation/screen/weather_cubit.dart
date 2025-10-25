import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/domain/repository/location_repository.dart';
import 'package:weather_app/domain/repository/weather_repository.dart';
import 'package:weather_app/presentation/screen/state/weather_screen_state_mapper.dart';

part 'state/weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepository _weatherRepository;
  final LocationRepository _locationRepository;

  StreamSubscription<Position>? _locationSub;

  WeatherCubit(this._weatherRepository, this._locationRepository)
    : super(WeatherState());

  start() async {
    emit(state.copyWith(isLoading: true, error: null));
    _locationSub = _locationRepository
        .getLocationStream(accuracy: LocationAccuracy.high)
        .listen(
          (pos) async {
            final weather = await _weatherRepository.getWeather(
              latitude: pos.latitude,
              longitude: pos.longitude,
            );
            emit(
              state.copyWith(weather: weather.toDomain(), isLoading: false, error: null),
            );
          },
          onError: (e) {
            emit(state.copyWith(isLoading: false, error: e.toString()));
          },
        );
  }

  @override
  Future<void> close() {
    _locationSub?.cancel();
    return super.close();
  }
}
