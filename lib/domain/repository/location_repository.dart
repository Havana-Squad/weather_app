
import 'package:geolocator/geolocator.dart';

abstract class LocationRepository {
  Future<Position?> getCurrentLocation();
  Future<Position?> getFreshLocation({Duration waitTimeout = const Duration(seconds: 10)});
  Stream<Position> getLocationStream({
    LocationAccuracy accuracy = LocationAccuracy.high,
    int distanceFilter = 0,
  });
}