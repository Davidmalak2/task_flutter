class MobilePhone {
  // Attributes
  String brand;
  String model;
  int storage;
  int battery;

  // Constructor
  MobilePhone(this.brand, this.model, this.storage, this.battery);

  // Use the phone
  void usePhone(int hours) {
    battery -= hours * 10;

    // Make sure battery never goes below 0
    if (battery < 0) {
      battery = 0;
      print("please recharge");
    }
  }

  // Charge the phone
  void chargePhone() {
    battery = 100;
  }

  // Display phone information
  void displayInfo() {
    print("Brand: $brand");
    print("Model: $model");
    print("Storage: $storage GB");
    print("Battery: $battery%");
    print("----------------------");
  }
}

void main() {
  // Create a mobile phone
  MobilePhone phone = MobilePhone("Samsung", "Galaxy S24", 256, 80);

  // Display initial information
  phone.displayInfo();

  // Use the phone for 3 hours =3*10 (50)
  phone.usePhone(3);

  // Display information
  phone.displayInfo();

  // Use the phone for 10 more hours
  phone.usePhone(10);

  // Display information
  phone.displayInfo();

  // Charge the phone
  phone.chargePhone();

  // Display final information
  phone.displayInfo();
}