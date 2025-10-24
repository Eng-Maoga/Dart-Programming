import 'dart:io';

void main() async {
  print("=== Mini Application ===");
  List<Map<String, dynamic>> logEntries = [];

  stdout.write("Enter a note: ");
  String? note = stdin.readLineSync();

  if (note != null) {
    String reversedNote = note.split('').reversed.join('');
    int length = note.length;

    Map<String, dynamic> entry = {
      "original": note,
      "reversed": reversedNote,
      "length": length,
      "timestamp": DateTime.now().toString(),
    };
    logEntries.add(entry);

    try {
      String logFile = "log.txt";
      String logContent = logEntries
          .map((e) =>
              "Original: ${e['original']}, Reversed: ${e['reversed']}, Length: ${e['length']}, Time: ${e['timestamp']}")
          .join("\n");
      await File(logFile).writeAsString(logContent);
      print("Log saved to $logFile.");
    } catch (e) {
      print("Error saving log: $e");
    }
  }
}

