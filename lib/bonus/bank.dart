class BankAccount {
  String ownerName;
  String accountNumber;
  double balance;

  BankAccount(this.ownerName, this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposited: $amount");
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Withdrawn: $amount");
    } else {
      print("Insufficient balance!");
    }
  }

  void showBalance() {
    print("Current Balance: $balance");
  }
}

void main() {
  BankAccount account = BankAccount("David", "123456", 1000);

  account.showBalance();

  account.deposit(500);
  account.showBalance();

  account.withdraw(300);
  account.showBalance();

  account.withdraw(1500);
  account.showBalance();

  account.deposit(1000);
  account.showBalance();

  account.withdraw(700);
  account.showBalance();
}