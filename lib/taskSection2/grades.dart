///passed and failed case
void main(){
  List<int> grades = [95, 82, 67, 45, 78, 99, 58,60];
  ///using for loop to iterate through the list of grades
  for (int grade in grades){
    //checking if the grade is greater than or equal to 60
    if (grade>=60){
      print("student has passed with grade: $grade");

    } else {
      print("student has failed with grade: $grade");
    }
  }
}