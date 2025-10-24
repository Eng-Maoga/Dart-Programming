void main() {
  print("=== Collections ===");

  List<String> fruits = ["Apple", "Banana", "Cherry"];
  fruits.add("Date");
  fruits.remove("Banana");
  print("List: $fruits");

  Set<String> colors = {"Red", "Green", "Blue"};
  colors.add("Yellow");
  colors.add("Red");
  colors.remove("Green");
  print("Set: $colors");

  Map<String, int> scores = {"Alice": 90, "Bob": 85};
  scores["Charlie"] = 95;
  scores.remove("Bob");
  print("Map:");
  scores.forEach((key, value) {
    print("$key => $value");
  });
}
