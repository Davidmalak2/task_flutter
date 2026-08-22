class Developer{
  String name;
  int id;
  double salary;
  int age;
  String framework;
  Developer(this.name, this.id, this.salary, this.age, this.framework);

void view(){
  print("Name: $name");
  print("Id: $id");
  print("Salary: $salary");
  print("Age: $age");
  print("Framework: $framework");
}
calculateSalary(){
  salary = salary + salary  *.25;
  print("Salary: $salary");
}}