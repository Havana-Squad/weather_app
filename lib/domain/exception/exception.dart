abstract class WeatherAppException implements Exception {
  final String message;

  WeatherAppException(this.message);

  @override
  String toString() => 'WeatherAppException: $message';
}

class NoNetworkException extends WeatherAppException {
  NoNetworkException(super.message);
}

class ParsingException extends WeatherAppException {
  ParsingException([super.message = "Data parsing error: Invalid JSON or type mismatch"]);
}

class NoLocationPermissionException extends WeatherAppException {
  NoLocationPermissionException(super.message);
}