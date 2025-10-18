// This class represents a Person
class Person {
  String name; // Each person has a name

  // Normal constructor — creates a person with a given name
  Person(this.name);

  // Factory constructor — checks before creating a person
  factory Person.create(String name) {
    // If the name is empty, return a default person
    if (name.isEmpty) return Person('Unknown');
    // Otherwise, create a normal person
    return Person(name);
  }
}

void main() {
  // Create a person with a valid name and print it
  print(Person.create('Allan').name); // Output: Allan

  // Try to create a person with an empty name
  // The factory returns 'Unknown' instead
  print(Person.create('').name);      // Output: Unknown
}