import 'dart:io';

void main() {
  print("Enter your grade:");
  int grade = int.parse(stdin.readLineSync()!);

  if (grade >= 90 && grade <= 100) {
    print("A");
  } else if (grade >= 80 && grade < 90) {
    print("B");
  } else if (grade >= 70 && grade < 80) {
    print("C");
  } else if (grade >= 60 && grade < 70) {
    print("D");
  } else if (grade >= 0 && grade < 60) {
    print("F");
  } else {
    print("Please try again");
  }
}