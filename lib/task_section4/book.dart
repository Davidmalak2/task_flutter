class Book {
  // Attributes
  String title;
  String author;
  double price;
  int pages;

  // Constructor
  Book(this.title, this.author, this.price, this.pages);

  // Display book information
  void displayBook() {
    print("Title: $title");
    print("Author: $author");
    print("Price: $price");
    print("Pages: $pages");
    print("Expensive: ${isExpensive()}");
    print("----------------------");
  }

  // Check if the book is expensive
  bool isExpensive() {
    return price > 500;
  }
}

void main() {
  // Create 3 books
  Book book1 = Book("Dart Programming", "Ahmed Ali", 600, 300);
  Book book2 = Book("Learn Flutter", "Omar Hassan", 450, 250);
  Book book3 = Book("Advanced OOP", "Mariam Samir", 750, 400);

  // Display information and check prices
  book1.displayBook();
  book2.displayBook();
  book3.displayBook();
}