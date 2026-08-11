import 'dart:io';
void main(){
  print("Enter a number: "); 
  int input = int.parse(stdin.readLineSync()!);
  int counter = 0;
  for (int i=1; i<=input; i++){
    if (input%i==0){
      counter++;

    }
  }
  if (counter==2){
    print("$input is a prime number");
  } else {
    print("$input is not a prime number");
  }
}