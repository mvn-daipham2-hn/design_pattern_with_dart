import 'bank_account.dart';

// The real subject: BankAccountImpl
class BankAccountImpl implements BankAccount {
  double _balance;

  BankAccountImpl(this._balance);

  @override
  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: \$$amount. New balance: \$$_balance");
    } else {
      print("Insufficient funds. Current balance: \$$_balance");
    }
  }

  @override
  double getBalance() {
    return _balance;
  }
}
