class employee {
  String name;
  int id;
  double salary;
  employee(this.name, this.id, this.salary);
    void view(){
    print("Name:$name");
    print("Id:$id");
    print("Salary: $salary");
  }


  calculateSalary(){
  salary = salary + salary  *.10;
  print("Salary: $salary");}
}
class Develop extends employee{
  String framework;
  @override
  Develop(super.name, super.id, super.salary,this.framework);
  @override
  void view() {
    
    super.view();
    print("Frame:$framework");
  }
  @override
  calculateSalary() {
    salary = salary + salary  *.20;
  }

}
void main(){
  Develop dev1=Develop("david",1,2000,"flutter");
dev1.view();
dev1.calculateSalary();
}