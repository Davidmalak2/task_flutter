class BankAccount {
  int accountID;
  double balance;

  //costructors
  BankAccount(this.accountID, this.balance);

  
  BankAccount.empty(this.accountID) : balance = 0;

  // Deposit money
  void deposit(double cash) {
    balance += cash;
    print("Deposit successful. New balance: $balance");
  }

  // Withdraw money
  void withdraw(double cash) {
    if (balance >= cash) {
      balance -= cash;
      print("Withdrawal successful. New balance: $balance");
    } else {
      print("Insufficient balance. Withdrawal not performed.");
    }
  }

  // View account information
  void view() {
    print("Account ID: $accountID");
    print("Balance: $balance");
  }
}

void main() {
  // Object using constructor with initial balance
  BankAccount bank1 = BankAccount(1, 10000);

  bank1.view();

  bank1.deposit(2000);

  bank1.withdraw(12000);

  bank1.view();

  print("----------------");

  // Object using no-argument constructor
  BankAccount bank2 = BankAccount.empty(2);

  bank2.view();

  bank2.deposit(5000);

  bank2.withdraw(2000);

  bank2.view();
}