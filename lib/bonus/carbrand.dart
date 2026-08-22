class Car {
  String brand;
  String model;
  double fuel;
  double fuelConsumption;

  Car(this.brand, this.model, this.fuel, this.fuelConsumption);

  void drive(double distance) {
    double fuelNeeded = (distance / 100) * fuelConsumption;

    if (fuelNeeded <= fuel) {
      fuel -= fuelNeeded;
      print("The car drove $distance km.");
      print("Fuel used: $fuelNeeded liters");
    } else {
      print("Not enough fuel!");
    }
  }

  void refuel(double amount) {
    fuel += amount;
    print("Added $amount liters of fuel.");
  }

  void showInfo() {
    print("Brand: $brand");
    print("Model: $model");
    print("Fuel: $fuel liters");
    print("Fuel Consumption: $fuelConsumption liters/100 km");
  }
}

void main() {
  Car car = Car("BMW", "M4", 50, 8);

  car.showInfo();

  print("--------------------");
  car.drive(200);

  print("--------------------");
  car.showInfo();

  print("--------------------");

  car.refuel(20);

  print("--------------------");

  car.showInfo();

  print("--------------------");

  car.drive(1000);



}
