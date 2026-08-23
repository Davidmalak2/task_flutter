class Student {
  // Attributes
  String name;
  int id;
  double math;
  double english;
  double science;

  // Constructor
  Student(this.name, this.id, this.math, this.english, this.science);

  // Calculate average
  double calculateAverage() {
    return (math + english + science) / 3;
  }

  // Get result
  String getResult() {
    double average = calculateAverage();

    if (average >= 90) {
      return "Excellent";
    } else if (average >= 80) {
      return "Very Good";
    } else if (average >= 70) {
      return "Good";
    } else if (average >= 50) {
      return "Pass";
    } else {
      return "Fail";
    }
  }

  // Display complete report
  void displayReport() {
    print("Student Name: $name");
    print("ID: $id");
    print("Math: $math");
    print("English: $english");
    print("Science: $science");
    print("Average: ${calculateAverage().toStringAsFixed(2)}");
    print("Result: ${getResult()}");
    print("---------------------------");
  }
}

void main() {
  // Create 3 students
  Student student1 = Student("Ahmed", 101, 95, 92, 96);
  Student student2 = Student("Mariam", 102, 85, 82, 88);
  Student student3 = Student("Omar", 103, 65, 72, 68);

  // Display reports
  student1.displayReport();
  student2.displayReport();
  student3.displayReport();
}