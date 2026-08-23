class Car {
  // Attributes
  String brand;
  String model;
  int year;
  int speed = 0;

  // Constructor
  Car(this.brand, this.model, this.year);

  // Increase speed by 10
  void accelerate() {
    speed += 10;
  }

  // Decrease speed by 10
  void brake() {
    speed -= 10;

    // Make sure speed never becomes negative
    if (speed < 0) {
      speed = 0;
    }
  }

  // Display car information
  void displayInfo() {
    print("Brand: $brand");
    print("Model: $model");
    print("Year: $year");
    print("Speed: $speed km/h");
    print("----------------------");
  }
}

void main() {
  // Create a car
  Car car = Car("Toyota", "Corolla", 2024);

  // Accelerate
  car.accelerate();
  car.accelerate();
  car.accelerate();

  // Brake
  car.brake();

  // Display information
  car.displayInfo();

  // Test braking below zero
  car.brake();
  car.displayInfo();

  car.brake();
  car.displayInfo();
  car.brake();
  car.displayInfo();


}