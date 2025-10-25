import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:domain/entity/Weather.dart';
import 'package:domain/repository/weather_repository.dart';
import 'package:domain/repository/location_repository.dart';

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

      final city = await _getCityName(pos);

      final weather = await _weatherRepository.getWeather(
        latitude: pos.latitude,
        longitude: pos.longitude,
      );

      emit(state.copyWith(
        position: pos,
        cityName: city,
        weather: weather,
        isLoading: false,
      ));

      _locationSub = _locationRepository
          .getLocationStream(accuracy: LocationAccuracy.high)
          .listen((pos) async {
        final city = await _getCityName(pos);
        final weather = await _weatherRepository.getWeather(
          latitude: pos.latitude,
          longitude: pos.longitude,
        );
        emit(state.copyWith(
          position: pos,
          cityName: city,
          weather: weather,
        ));
      });
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }

  Future<String?> _getCityName(Position pos) async {
    try {
      final placemarks =
      await placemarkFromCoordinates(pos.latitude, pos.longitude);
      if (placemarks.isNotEmpty) {
        return placemarks.first.locality ??
            placemarks.first.subAdministrativeArea ??
            placemarks.first.country;
      }
    } catch (_) {}
    return null;
  }

  @override
  Future<void> close() {
    _locationSub?.cancel();
    return super.close();
  }
}
