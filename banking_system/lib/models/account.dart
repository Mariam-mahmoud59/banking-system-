class Account {
  String accountHolderName;
  String accountNumber;
  double balance;

  Account(this.accountHolderName, this.accountNumber, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposited \$${amount.toStringAsFixed(2)} successfully!");
    } else {
      print("Error: Deposit amount must be positive.");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print("Withdrawn \$${amount.toStringAsFixed(2)} successfully!");
    } else if (amount > balance) {
      print("Error: Insufficient funds!");
    } else {
      print("Error: Withdrawal amount must be positive.");
    }
  }
}
