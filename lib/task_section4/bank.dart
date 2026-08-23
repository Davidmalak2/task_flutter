class BankAccount {
  // Attributes
  String ownerName;
  String accountNumber;
  double balance;

  // Constructor
  BankAccount(this.ownerName, this.accountNumber, this.balance);

  // Deposit money
  void deposit(double amount) {
    balance += amount;
  }

  // Withdraw money
  void withdraw(double amount) {
    balance -= amount;
  }

  // Display current balance
  void displayBalance() {
    print("Owner: $ownerName");
    print("Account Number: $accountNumber");
    print("Current Balance: $balance");
    print("----------------------");
  }
}

void main() {
  // Create a bank account
  BankAccount account = BankAccount("Ahmed", "123456", 1000.0);

  // Display initial balance
  account.displayBalance();

  // Deposits
  account.deposit(500.0);
  account.deposit(250.0);

  // Withdrawal
  account.withdraw(300.0);
  account.withdraw(100.0);

  // Display final balance
  account.displayBalance();
}