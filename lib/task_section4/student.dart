class Student {
  // Attributes
  String name;
  int age;
  double grade;

  // Constructor
  Student(this.name, this.age, this.grade);

  // Function to display student information
  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Grade: $grade");
    print("-------------------");
  }
}

void main() {
  // Create 3 students
  Student student1 = Student("Ahmed", 20, 85.5);
  Student student2 = Student("Mariam", 21, 92.0);
  Student student3 = Student("Omar", 19, 78.5);

  // Display information
  student1.displayInfo();
  student2.displayInfo();
  student3.displayInfo();
}