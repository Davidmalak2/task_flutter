/// This program takes a list of numbers and separates them into three different lists: positive numbers, negative numbers, and zero numbers.
///  It then prints out each of these lists.
void main() {
  ///liast of random numbers
  List<int> numbers = [10, -5, 20, -8, 3, -2, 15,0,0];
//  Lists to hold positive, negative, and zero numbers
  List<int> positive = [];
  List<int> negative = [];
  List<int> zero = [];
//  Loop through the list of numbers and separate them into the appropriate lists
  for (int number in numbers) {
    if (number > 0) {
      positive.add(number);
    } else if (number < 0) {
      negative.add(number);
    } else {
      zero.add(number);
    }
  }

  print("Positive numbers: $positive");
  print("Negative numbers: $negative");
  print("Zero numbers: $zero");
}