class Person {
  static final Person _instance = Person._internal(); // one shared instance
  factory Person() => _instance; // always return the same instance
  Person._internal(); // private constructor
  String name = 'Allan';
}

void main() {
  print(Person().name); // Allan
  Person().name = 'John';
  print(Person().name); // John (same object)
}