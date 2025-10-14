// Declaring a simple class in Dart
class Car {
  // Properties of the class
  String brand;
  String model;

  // Constructor
  Car(this.brand, this.model);

  // Method to display car details
  void showDetails() {
    print('Brand: $brand, Model: $model');
  }
}

void main() {
  // Creating an object of the Car class
  Car myCar = Car('Toyota', 'Corolla');

  // cresting another object
  Car myCar2 = Car('Honda', 'Civic');
  
  // Calling the method using the object
  myCar.showDetails(); // Output: Brand: Toyota, Model: Corolla
  myCar2.showDetails(); // Output: Brand: Honda, Model: Civic
}