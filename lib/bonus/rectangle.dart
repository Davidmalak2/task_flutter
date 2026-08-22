class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }

  bool isSquare() {
    return width == height;
  }
}

void main() {
  Rectangle rectangle = Rectangle(10, 10);

  print("Width: ${rectangle.width}");
  print("Height: ${rectangle.height}");
  print("Area: ${rectangle.calculateArea()}");
  print("Perimeter: ${rectangle.calculatePerimeter()}");
  print("Is Square: ${rectangle.isSquare()}");
}