class Manager{
  String name;
  int id;
  double salary;    
  int age;
 String department;
  Manager(this.name, this.id, this.salary, this.age, this.department  );

void view(){
  print("Name: $name");
  print("Id: $id");
  print("Salary: $salary");
  print("Age: $age");
  print("Department: $department");
}
calculateSalary(){
  salary = salary + salary  *.90;
  print("Salary: $salary");
}}