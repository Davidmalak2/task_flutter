///student grades
void main() {
  // 1. Create a Map containing 5 students and their grades
  Map<String, int> students = {
    "David": 90,
    "John": 80,
    "Mark": 85,
    "Peter": 60,
    "Michael": 95,
  };

  int total = 0;

  // Using for loop
  for (var student in students.entries) {
    // 1. Print each student's name and grade
    print("${student.key}: ${student.value}");

    // 2. Print only students who scored 80 or higher
    if (student.value >= 80) {
      print("${student.key} scored 80 or higher");
    }

    // Calculate total grades
    total += student.value;
  }
  print("-------------------------------");
  // 3. Calculate and print average
  double average = total / students.length;

  print("Average grade: $average");
}