import 'dart:io';

void main() {
  double balance = 1000.0;
  int choice;

  do {
    print("\n===== ATM Menu =====");
    print("1. Check Balance");
    print("2. Deposit");
    print("3. Withdraw");
    print("4. Exit");

    stdout.write("Choose an option: ");
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Current balance: \$${balance}");
        break;

      case 2:
        stdout.write("Enter deposit amount: ");
        double amount = double.parse(stdin.readLineSync()!);

        balance += amount;

        print("Deposit successful!");
        print("Current balance: \$${balance}");
        break;

      case 3:
        stdout.write("Enter withdrawal amount: ");
        double amount = double.parse(stdin.readLineSync()!);

        if (amount <= balance) {
          balance -= amount;

          print("Withdrawal successful!");
          print("Current balance: \$${balance}");
        } else {
          print("Insufficient balance!");
        }
        break;

      case 4:
        print("Thank you for using the ATM!");
        break;

      default:
        print("Invalid option");
    }
  } while (choice != 4);
}