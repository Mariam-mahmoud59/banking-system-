import '../models/account.dart';

class BankingService {
  final Map<String, Account> accounts = {};

  void createAccount(String name, String accountNumber, double initialDeposit) {
    if (accounts.containsKey(accountNumber)) {
      print("Error: Account with number $accountNumber already exists.");
      return;
    }
    accounts[accountNumber] = Account(name, accountNumber, initialDeposit);
    print("Account created successfully!");
  }

  Account? getAccount(String accountNumber) {
    return accounts[accountNumber];
  }

  void deposit(String accountNumber, double amount) {
    final account = getAccount(accountNumber);
    if (account != null) {
      account.deposit(amount);
    } else {
      print("Error: Account not found.");
    }
  }

  void withdraw(String accountNumber, double amount) {
    final account = getAccount(accountNumber);
    if (account != null) {
      account.withdraw(amount);
    } else {
      print("Error: Account not found.");
    }
  }

  void checkBalance(String accountNumber) {
    final account = getAccount(accountNumber);
    if (account != null) {
      print("Account Holder: ${account.accountHolderName}");
      print("Account Number: ${account.accountNumber}");
      print("Balance: \$${account.balance.toStringAsFixed(2)}");
    } else {
      print("Error: Account not found.");
    }
  }
}
