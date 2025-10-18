// Base class (Superclass)
class Vehicle {
  String brand;
  int year;
  int maxSpeed;

  // Constructor for Vehicle
  Vehicle(this.brand, this.year, this.maxSpeed);

  // Method to display vehicle info
  void displayInfo() {
    print("Brand: $brand");
    print("Year: $year");
    print("Max Speed: ${maxSpeed}km/h");
  }

  // Method to start the vehicle
  void start() {
    print("$brand is starting...");
  }
}

// Derived class (Subclass) inheriting from Vehicle
class Car extends Vehicle {
  String model;
  int doors;

  // Constructor for Car which uses super to call the base class constructor
  Car(String brand, int year, int maxSpeed, this.model, this.doors) 
      : super(brand, year, maxSpeed);

  // Method to display car-specific info
  void displayCarInfo() {
    displayInfo(); // Call the base class method
    print("Model: $model");
    print("Doors: $doors");
  }

  // Method to honk the car horn
  void honk() {
    print("$brand $model is honking!");
  }
}

// Another derived class for Motorcycle
class Motorcycle extends Vehicle {
  String type;
  bool hasFairing;

  // Constructor for Motorcycle
  Motorcycle(String brand, int year, int maxSpeed, this.type, this.hasFairing)
      : super(brand, year, maxSpeed);

  // Method to display motorcycle-specific info
  void displayMotorcycleInfo() {
    displayInfo(); // Call the base class method
    print("Type: $type");
    print("Has Fairing: $hasFairing");
  }

  // Method to wheelie
  void doWheelie() {
    print("$brand is doing a wheelie!");
  }
}

void main() {
  // Creating an instance of the Car class
  Car car = Car('Toyota', 2021, 180, 'Corolla', 4);

  // Creating an instance of the Motorcycle class
  Motorcycle motorcycle = Motorcycle('Yamaha', 2020, 220, 'Sport', true);

  // Accessing methods from both base and derived classes
  print("Car Information");
  car.displayCarInfo();
  car.start();
  car.honk();

  print("Motorcycle Information");
  motorcycle.displayMotorcycleInfo();
  motorcycle.start();
  motorcycle.doWheelie();
}