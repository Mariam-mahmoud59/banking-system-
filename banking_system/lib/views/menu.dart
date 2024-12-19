import 'dart:io';
import '../services/banking_service.dart';

void showMenu(BankingService bankingService) {
  while (true) {
    print("\n--- Banking System Menu ---");
    print("1. Create Account");
    print("2. Deposit");
    print("3. Withdraw");
    print("4. Check Balance");
    print("5. Exit");
    stdout.write("Choose an option: ");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write("Enter account holder name: ");
        String? name = stdin.readLineSync();
        stdout.write("Enter account number: ");
        String? accountNumber = stdin.readLineSync();
        stdout.write("Enter initial deposit: ");
        double? initialDeposit = double.tryParse(stdin.readLineSync() ?? '');

        if (name != null && accountNumber != null && initialDeposit != null) {
          bankingService.createAccount(name, accountNumber, initialDeposit);
        } else {
          print("Error: Invalid input.");
        }
        break;

      case '2':
        stdout.write("Enter account number: ");
        String? depositAccountNumber = stdin.readLineSync();
        stdout.write("Enter deposit amount: ");
        double? depositAmount = double.tryParse(stdin.readLineSync() ?? '');

        if (depositAccountNumber != null && depositAmount != null) {
          bankingService.deposit(depositAccountNumber, depositAmount);
        } else {
          print("Error: Invalid input.");
        }
        break;

      case '3':
        stdout.write("Enter account number: ");
        String? withdrawAccountNumber = stdin.readLineSync();
        stdout.write("Enter withdrawal amount: ");
        double? withdrawAmount = double.tryParse(stdin.readLineSync() ?? '');

        if (withdrawAccountNumber != null && withdrawAmount != null) {
          bankingService.withdraw(withdrawAccountNumber, withdrawAmount);
        } else {
          print("Error: Invalid input.");
        }
        break;

      case '4':
        stdout.write("Enter account number: ");
        String? balanceAccountNumber = stdin.readLineSync();

        if (balanceAccountNumber != null) {
          bankingService.checkBalance(balanceAccountNumber);
        } else {
          print("Error: Invalid input.");
        }
        break;

      case '5':
        print("Exiting the banking system. Goodbye!");
        return;

      default:
        print("Error: Invalid option. Please try again.");
    }
  }
}
