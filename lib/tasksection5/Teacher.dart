class Teacher {
  List<String> courses = [];

  bool addCourse(String course) {
    if (courses.contains(course)) {
      return false;
    }

    courses.add(course);
    return true;
  }

  bool removeCourse(String course) {
    if (courses.contains(course)) {
      courses.remove(course);
      return true;
    }

    return false;
  }
}

void main() {
  Teacher teacher = Teacher();

  // 1. Add a new course
  print(teacher.addCourse("Dart"));
  // true

  // 2. Try to add the same course again
  print(teacher.addCourse("Dart"));
  // false

  // 3. Remove an existing course
  print(teacher.removeCourse("Dart"));
  // true

  // 4. Try to remove a course that does not exist
  print(teacher.removeCourse("Flutter"));
  // false
}