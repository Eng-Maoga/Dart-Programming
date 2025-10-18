// Polymorphism example

// Base class
class Shape {
  // Method to be overridden by derived classes
  void area() {
    print("Calculating area of a shape...");
  }
}

// Derived class Circle that overrides area method
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  void area() {
    double result = 3.1416 * radius * radius;
    print("Area of Circle: ${result}");
  }
}

// Derived class Rectangle that overrides area method
class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  void area() {
    double result = length * width;
    print("Area of Rectangle: ${result}");
  }
}

// Derived class Triangle that overrides area method
class Triangle extends Shape {
  double base;
  double height;

  Triangle(this.base, this.height);

  @override
  void area() {
    double result = 0.5 * base * height;
    print("Area of Triangle: ${result}");
  }
}

void main() {
  // Creating instances of Shape and its subclasses
  Shape shape = Shape();
  Circle circle = Circle(5.0);
  Rectangle rectangle = Rectangle(4.0, 6.0);
  Triangle triangle = Triangle(3.0, 8.0);

  // Calling area method for each instance
  shape.area();
  circle.area();
  rectangle.area();
  triangle.area();
}
