DateTime _utcNow() => DateTime.now().toUtc();

DateTime _dateOnlyUtc(DateTime dt) => DateTime.utc(dt.year, dt.month, dt.day);

DateTime parseDateTime(String? isoString) {
  if (isoString == null) return _utcNow();
  return DateTime.tryParse(isoString)?.toUtc() ?? _utcNow();
}

DateTime parseDate(String? isoDateString) {
  return _dateOnlyUtc(parseDateTime(isoDateString));
}
