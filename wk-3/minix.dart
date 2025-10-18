mixin Walker {
  void walk() => print('I can walk!');
}

class Person with Walker {}

void main() {
  Person().walk(); // Output: I can walk!
}