class Employee {
  // Attributes
  String name;
  int id;
  double salary;

  // Constructor
  Employee(this.name, this.id, this.salary);

  // Increase salary by percentage
  void increaseSalary(double percentage) {
    salary += salary * (percentage / 100);
  }

  // Display employee information
  void displayEmployee() {
    print("Name: $name");
    print("ID: $id");
    print("Salary: $salary");
    print("----------------------");
  }
}

void main() {
  // Create 2 employees
  Employee employee1 = Employee("Ahmed", 101, 5000);
  Employee employee2 = Employee("Hamad", 102, 6000);

  // Increase salaries by different percentages
  employee1.increaseSalary(10); // 10% increase
  employee2.increaseSalary(20); // 20% increase

  // Display new salaries
  employee1.displayEmployee();
  employee2.displayEmployee();
}