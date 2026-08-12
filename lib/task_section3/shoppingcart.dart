void main() {
  Map<String, double> products = {
    "Laptop": 1200.0,
    "Skirt": 30.0,
    "Keyboard": 80.0,
    "Jacket": 60.0,
    "Shoes": 20.0,
  };

  double total = 0;
  String theExpensiveProduct = "";
  double highestPrice = 0;

  for (var product in products.entries) {
    // 1. Print every product and its price
    print("${product.key}: \$${product.value}");}
    for (var product in products.entries) {

    // 2. Calculate total price
    total += product.value;

    // 3. Print products that cost more than 50
    if (product.value > 50) {
      print("${product.key} costs more than 50");
    }

    // 4. Find the most expensive product
    if (product.value > highestPrice) {
      highestPrice = product.value;
      theExpensiveProduct = product.key;
    }
  }

  print("Total price: \$${total}");
  print("Most expensive product: $theExpensiveProduct");
  print("Price: \$${highestPrice}");
}