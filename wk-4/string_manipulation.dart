import 'dart:io';

void main() {
  print("=== String Manipulation ===");
  stdout.write("Enter a string: ");
  String? input = stdin.readLineSync();

  if (input != null) {
    String concatenated = input + " is awesome!";
    print("Concatenated: $concatenated");

    print("Interpolation: Your input was '$input'");

    if (input.length >= 4) {
      print("Substring (0-3): ${input.substring(0, 4)}");
    }

    print("Uppercase: ${input.toUpperCase()}");
    print("Lowercase: ${input.toLowerCase()}");

    String reversed = input.split('').reversed.join('');
    print("Reversed: $reversed");

    print("Length: ${input.length}");
  }
}
