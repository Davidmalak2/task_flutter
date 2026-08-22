import 'dart:io';

void main() {
  List<int> num = [1, 2, 3, 4, 5];

  print("Enter a number: ");
  int search = int.parse(stdin.readLineSync()!);

  int index = -1;

  for (int i = 0; i < num.length; i++) {
    if (num[i] == search) {
      index = i;
      break;
    }
  }

  print("Index = $index");
}