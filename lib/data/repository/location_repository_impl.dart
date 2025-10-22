import 'package:geolocator/geolocator.dart';

import '../../domain/repository/location_repository.dart';

class LocationRepositoryImpl implements LocationRepository {
  Future<bool> _hasLocationPermission() async {
    final status = await Geolocator.checkPermission();
    return status == LocationPermission.always ||
        status == LocationPermission.whileInUse;
  }

  Future<bool> _requestPermission() async {
    final status = await Geolocator.requestPermission();

    if (status == LocationPermission.always ||
        status == LocationPermission.whileInUse) {
      return true;
    }

    if (status == LocationPermission.deniedForever) {
      await Geolocator.openAppSettings();
      return _hasLocationPermission();
    }

    return false;
  }

  @override
  Future<Position?> getCurrentLocation() async {
    if (!await _hasLocationPermission()) {
      final granted = await _requestPermission();
      if (!granted) return null;
    }

    try {
      return await Geolocator.getCurrentPosition();
    } catch (_) {
      return null;
    }
  }

  @override
  Future<Position?> getFreshLocation({
    Duration waitTimeout = const Duration(seconds: 10),
  }) async {
    if (!await _hasLocationPermission()) {
      final granted = await _requestPermission();
      if (!granted) return null;
    }

    try {
      final stream = getLocationStream();
      return await stream.first.timeout(waitTimeout);
    } catch (_) {
      return null;
    }
  }

  @override
  Stream<Position> getLocationStream({
    LocationAccuracy accuracy = LocationAccuracy.high,
    int distanceFilter = 0,
  }) async* {
    if (!await _hasLocationPermission()) {
      final granted = await _requestPermission();
      if (!granted) {
        return;
      }
    }

    final settings = LocationSettings(
      accuracy: accuracy,
      distanceFilter: distanceFilter,
    );

    try {
      yield* Geolocator.getPositionStream(locationSettings: settings);
    } catch (_) {
      return;
    }
  }
}
