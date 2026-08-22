class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotal() {
    return price * quantity;
  }

  double applyDiscount(double percentage) {
    double discount = calculateTotal() * (percentage / 100);
    return calculateTotal() - discount;
  }

  void printReceipt() {
    print("Product Name: $name");
    print("Quantity: $quantity");
    print("Total Price: ${calculateTotal()}");
    print("Discounted Price: ${applyDiscount(20)}");
  }
}

void main() {
  Product product = Product("Laptop", 1000, 2);

  product.printReceipt();
}