void main() {
  print("=== Date and Time ===");

  DateTime now = DateTime.now();
  print("Current DateTime: $now");

  // Formatting
  print("Formatted: ${now.year}-${now.month}-${now.day}");

  // Add/subtract days
  DateTime nextWeek = now.add(Duration(days: 7));
  DateTime lastWeek = now.subtract(Duration(days: 7));
  print("Next Week: $nextWeek");
  print("Last Week: $lastWeek");

  // Difference between two dates
  Duration difference = nextWeek.difference(lastWeek);
  print("Difference in days: ${difference.inDays}");
}
