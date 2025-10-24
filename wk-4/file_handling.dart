import 'dart:io';

void main() async {
  print("=== File Handling ===");
  String inputFile = "input.txt";
  String outputFile = "output.txt";

  try {
    await File(inputFile).writeAsString("Hello from Dart file!");
    String fileContent = await File(inputFile).readAsString();
    print("Content of $inputFile: $fileContent");

    await File(outputFile).writeAsString("This is new data in $outputFile.");
    print("Data written to $outputFile successfully.");
  } catch (e) {
    print("Error during file operations: $e");
  }
}
