import 'views/menu.dart';
import 'services/banking_service.dart';

void main() {
  final bankingService = BankingService();
  showMenu(bankingService);
}
