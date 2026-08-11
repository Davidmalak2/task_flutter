import  'dart:io';
void main(){
  print("Enter a number: ");
  int input = int.parse(stdin.readLineSync()!);
  int reversed = 0;
  while (input != 0) {
    reversed = reversed * 10 + input % 10;
    input = input ~/ 10;
  }
  print("Reversed number: $reversed");
}
