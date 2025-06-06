T? enumFromString<T extends Enum>(List<T> enumValues, String value) {
  final valueLower = value.toLowerCase();

  return enumValues.firstWhere(
    (type) => type.toString().split('.').last.toLowerCase() == valueLower,
    orElse: () => throw ArgumentError('Invalid enum value: $value'),
  );
}

String formatWithCommas(int number) {
  return number.toString().replaceAllMapped(
        RegExp(r'\B(?=(\d{3})+(?!\d))'),
        (match) => ',',
      );
}
