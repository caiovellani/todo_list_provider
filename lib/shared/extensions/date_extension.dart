extension DateExtension on DateTime {
  String get formatDate {
    // Para a data 16/08/2023
    final String formattedDay = day.toString().padLeft(2, '0'); // 16
    final String formattedMonth = month.toString().padLeft(2, '0'); // 08
    final String formattedYear = year.toString(); // 2023

    // 16       /   08       / 2023
    return '$formattedDay/$formattedMonth/$formattedYear';
  }
}
