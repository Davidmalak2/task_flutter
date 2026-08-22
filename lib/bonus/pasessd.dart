class Student {
  String name;
  int age;
  double grade;

  Student(this.name, this.age, this.grade);

  bool isPassed() {
    return grade >= 50;
  }

  void printInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Grade: $grade");
    print("Passed: ${isPassed()}");
    print("--------------------");
  }
}

void main() {
  Student student1 = Student("John", 20, 85);
  Student student2 = Student("David", 21, 45);
  Student student3 = Student("Mark", 19, 60);

  student1.printInfo();
  student2.printInfo();
  student3.printInfo();
}