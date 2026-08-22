import 'Accountant.dart'; 
import 'Developer.dart';
import 'Manager.dart';
void main(){
  Accountant a1 = Accountant("John", 101, 50000, 30, true);
  a1.view();
  a1.calculateSalary();
  
 Developer d1 = Developer("Alice", 102, 60000, 28, "Flutter");
  d1.view();
  d1.calculateSalary();
  
  Manager m1 = Manager("Bob", 103, 70000, 35, "Sales");
  m1.view();
  m1.calculateSalary();
}

