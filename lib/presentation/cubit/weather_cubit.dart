import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import '../../domain/entity/Weather.dart';
import '../../domain/repository/weather_repository.dart';
import '../../domain/repository/location_repository.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepository _weatherRepository;
  final LocationRepository _locationRepository;

  StreamSubscription<Position>? _locationSub;

  WeatherCubit(
      this._weatherRepository,
      this._locationRepository,
      ) : super(const WeatherState());

  Future<void> start() async {
    emit(state.copyWith(isLoading: true, error: null));

    try {
      final pos = await _locationRepository.getCurrentLocation();
      if (pos == null) {
        emit(state.copyWith(isLoading: false, error: 'Location not available'));
        return;
      }

      final weather = await _weatherRepository.getWeather(
        latitude: pos.latitude,
        longitude: pos.longitude,
      );

      emit(state.copyWith(weather: weather, position: pos, isLoading: false));

      _locationSub = _locationRepository
          .getLocationStream(accuracy: LocationAccuracy.high)
          .listen((pos) async {
        final weather = await _weatherRepository.getWeather(
          latitude: pos.latitude,
          longitude: pos.longitude,
        );
        emit(state.copyWith(weather: weather, position: pos));
      });
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }

  @override
  Future<void> close() {
    _locationSub?.cancel();
    return super.close();
  }
}
