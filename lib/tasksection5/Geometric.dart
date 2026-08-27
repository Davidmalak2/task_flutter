import 'dart:math';

class GeometricObject {
  String color;
  bool filled;

  // No-argument constructor
  GeometricObject()
      : color = "white",
        filled = false;

  // Constructor with color and filled
  GeometricObject.withDetails(this.color, this.filled);

  @override
  String toString() {
    return "Color: $color, Filled: $filled";
  }
}

// ----------------------------------

class Triangle extends GeometricObject {
  double side1;
  double side2;
  double side3;

  // No-argument constructor
  Triangle()
      : side1 = 1.0,
        side2 = 1.0,
        side3 = 1.0,
        super();

  // Constructor with three sides
  Triangle.withSides(this.side1, this.side2, this.side3) : super();

  double getArea() {
    double s = (side1 + side2 + side3) / 2;

    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }

  double getPerimeter() {
    return side1 + side2 + side3;
  }

  @override
  String toString() {
    return "Triangle: side1 = $side1, side2 = $side2, side3 = $side3";
  }
}

// ----------------------------------

class Rectangle extends GeometricObject {
  double width;
  double height;

  // No-argument constructor
  Rectangle()
      : width = 1.0,
        height = 1.0,
        super();

  // Constructor with width, height, color and filled
  Rectangle.withDetails(
    this.width,
    this.height,
    String color,
    bool filled,
  ) : super.withDetails(color, filled);

  double getArea() {
    return width * height;
  }

  double getPerimeter() {
    return 2 * (width + height);
  }

  @override
  String toString() {
    return "Rectangle: height = $height, width = $width";
  }
}

// ----------------------------------

void main() {
  // GeometricObject constructors
  GeometricObject object1 = GeometricObject();
  print(object1);

  GeometricObject object2 =
      GeometricObject.withDetails("red", true);
  print(object2);

  print("----------------");

  // Triangle constructors
  Triangle triangle1 = Triangle();
  print(triangle1);
  print("Area: ${triangle1.getArea()}");
  print("Perimeter: ${triangle1.getPerimeter()}");

  Triangle triangle2 =
      Triangle.withSides(3.0, 4.0, 5.0);

  print(triangle2);
  print("Area: ${triangle2.getArea()}");
  print("Perimeter: ${triangle2.getPerimeter()}");

  print("----------------");

  // Rectangle constructors
  Rectangle rectangle1 = Rectangle();
  print(rectangle1);
  print("Area: ${rectangle1.getArea()}");
  print("Perimeter: ${rectangle1.getPerimeter()}");

  Rectangle rectangle2 =
      Rectangle.withDetails(10.0, 5.0, "blue", true);

  print(rectangle2);
  print("Area: ${rectangle2.getArea()}");
  print("Perimeter: ${rectangle2.getPerimeter()}");
}