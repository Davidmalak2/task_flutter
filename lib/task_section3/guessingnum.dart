/// A simple number guessing game where the user tries to guess a secret number.
import 'dart:io';

void main() {
  int secretNumber = 7;
  int attempts = 0;
  int guess = 0;

  ///User is prompted to enter a guess, and the program provides feedback on whether the guess is too high, too low, or correct. The game continues until the user guesses the correct number, and the total number of attempts is displayed at the end.
  while (guess != secretNumber) {
    stdout.write("Enter your guess: ");
    guess = int.parse(stdin.readLineSync()!);

    attempts++;
///context: The program checks the user's guess against the secret number and provides feedback accordingly. If the guess is too high, it informs the user; if it's too low, it does the same. When the user guesses correctly, it congratulates them and displays the total number of attempts made.
    if (guess > secretNumber) {
      print("Too high!");
    } else if (guess < secretNumber) {
      print("Too low!");
    } else {
      print("Correct!");
      print("You made $attempts attempts.");
    }
  }
}