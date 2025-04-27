T? enumFromString<T extends Enum>(List<T> enumValues, String value) {
  final valueLower = value.toLowerCase();

  return enumValues.firstWhere(
    (type) => type.toString().split('.').last.toLowerCase() == valueLower,
    orElse: () => throw ArgumentError('Invalid enum value: $value'),
  );
}
