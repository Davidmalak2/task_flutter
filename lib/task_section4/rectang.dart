class Rectangle {
  // Attributes
  double width;
  double height;

  // Constructor
  Rectangle(this.width, this.height);

  // Calculate area
  double calculateArea() {
    return width * height;
  }

  // Calculate perimeter
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  // Create a rectangle
  Rectangle rectangle = Rectangle(10, 5);

  // Print results
  print("Area: ${rectangle.calculateArea()}");
  print("Perimeter: ${rectangle.calculatePerimeter()}");
}