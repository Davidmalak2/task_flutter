class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double getTotalPrice() {
    return price * quantity;
  }
}

class ShoppingCart {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
  }

  double calculateTotal() {
    double total = 0;

    for (Product product in products) {
      total += product.getTotalPrice();
    }

    return total;
  }

  void showCart() {
    print("Shopping Cart:");
    print("--------------------");

    for (Product product in products) {
      print("Product: ${product.name}");
      print("Price: ${product.price}");
      print("Quantity: ${product.quantity}");
      print("Total: ${product.getTotalPrice()}");
      print("--------------------");
    }

    print("Cart Total: ${calculateTotal()}");
  }

  double applyDiscount(double percentage) {
    double discount = calculateTotal() * (percentage / 100);
    return calculateTotal() - discount;
  }
}

void main() {
  Product product1 = Product("Laptop", 1000, 1);
  Product product2 = Product("Mouse", 50, 2);
  Product product3 = Product("Keyboard", 100, 1);

  ShoppingCart cart = ShoppingCart();

  cart.addProduct(product1);
  cart.addProduct(product2);
  cart.addProduct(product3);

  cart.showCart();

  print("--------------------");
  print("After 10% Discount: ${cart.applyDiscount(10)}");
}