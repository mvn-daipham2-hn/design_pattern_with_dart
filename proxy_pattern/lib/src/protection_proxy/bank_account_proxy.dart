import 'bank_account.dart';

// Proxy: Protection Proxy
class BankAccountProxy implements BankAccount {
  final BankAccount _realAccount;
  final String _userRole; // Role of the user trying to access the bank account

  BankAccountProxy(this._realAccount, this._userRole);

  @override
  void withdraw(double amount) {
    // Check if the user has permission to access the bank account
    if (_userRole == "admin") {
      _realAccount.withdraw(amount);
    } else {
      print("Access denied. Only admin can withdraw money.");
    }
  }

  @override
  double getBalance() {
    if (_userRole == "admin") {
      return _realAccount.getBalance();
    } else {
      print("Access denied. Only admin can view the balance.");
      return 0.0;
    }
  }
}
