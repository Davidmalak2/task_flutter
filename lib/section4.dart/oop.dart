class Car{
  String? model;
  int? price;
  double? km;
  String? color;
  Car(String model, int price, String color, double km) {
    this.model = model;
    this.price = price;
    this.color = color;
    this.km = km;
  }
  void view(){
    print("Model: $model ");
    print("Price: $price");
    print("Color: $color");
    print("Km: $km");
  }
  void Start(){
    print("Car is starting");
  }
}