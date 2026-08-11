
  import 'dart:io';

void main() {
  print("Enter num1:");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter num2:");
  int num2 = int.parse(stdin.readLineSync()!);
  print("Enter num3:");
  int num3 = int.parse(stdin.readLineSync()!);

  if (num1 > num2 && num1 > num3) {
    print("The maximum number is: $num1");
    if(num2<num3){
      print("The minimum number is: $num2");
    } else {
      print("The minimum number is: $num3");
    }
  } else if (num2 > num1 && num2 > num3) {
    print("The maximum number is: $num2");
    if(num1<num3){
      print("The minimum number is: $num1");
    } else {
      print("The minimum number is: $num3");
    }
  } else if (num3 > num1 && num3 > num2) {
    print("The maximum number is: $num3");
    if(num1<num2){
      print("The minimum number is: $num1");
    } else {
      print("The minimum number is: $num2");
    }
  } else {
    print("min:$num1,max:$num1");  
  }}


 

