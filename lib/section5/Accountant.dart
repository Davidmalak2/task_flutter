class Accountant{
  String name;
  int id;
  double salary;
  int age;
  bool certification;
  Accountant(this.name, this.id, this.salary, this.age, this.certification);

void view(){
  print("Name: $name");
  print("Id: $id"); 
  print("Salary: $salary");
  print("Age: $age");
  print("Certification: $certification");
}
calculateSalary(){
  salary = salary + salary  *.10;
  print("Salary: $salary");
}}
