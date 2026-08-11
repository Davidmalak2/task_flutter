import 'dart:io';
void main (){
  List<int> num = [1,2,3,4,5];
  print("Enter a number : ");
  int search = int.parse(stdin.readLineSync()!);
  for (int i =0; i<num.length; i++){
    if (num[i] == search) {
      print("Number found at index $i");
      return;
    }
  }
  print("Number not found");
}
