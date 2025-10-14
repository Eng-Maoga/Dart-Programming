//declare class
class Person {
  //properties
  String name;
  int age;

  //constructor
  Person(this.name, this.age);

  //method
  void display() {
    print("Name: $name");
    print("Age: $age");
  }
}

void main() {
  //create an object (an instance of a class)
  var person1 = Person("Alice", 30);
  person1.display();
  // create another object
  var person2 = Person("Bob", 25);
  person2.display();
}
