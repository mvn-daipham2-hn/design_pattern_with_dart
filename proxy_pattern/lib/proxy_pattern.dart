library proxy_pattern;

// --- Protection Proxy ---
// import 'src/protection_proxy/bank_account.dart';
// import 'src/protection_proxy/bank_account_impl.dart';
// import 'src/protection_proxy/bank_account_proxy.dart';
//
// void main() {
//   // Create a bank account with $1000 balance
//   BankAccount account = BankAccountImpl(1000);
//
//   // Create a proxy for an admin user
//   BankAccountProxy adminProxy = BankAccountProxy(account, "admin");
//   adminProxy.withdraw(300); // Allowed: Admin can withdraw
//   print("Balance: \$${adminProxy.getBalance()}");
//
//   // Create a proxy for a non-admin user
//   BankAccountProxy userProxy = BankAccountProxy(account, "user");
//   userProxy.withdraw(200); // Denied: Non-admin cannot withdraw
//   print("Balance: \$${userProxy.getBalance()}"); // Denied: Cannot view balance
// }

// --- Virtual Proxy ---
import 'src/virtual_proxy/icon.dart';
import 'src/virtual_proxy/image_proxy.dart';

void main() async {
  Icon icon = ImageProxy("");
  icon.paintIcon(0, 0, 200, 200, "#00FF00");

  // Try change color and resize when image is loading
  try {
    icon.changeColor("FF00FF");
    icon.resize(2);
  } catch (e) {
    print(e);
  }
  // Wait 3 seconds...
  await Future.delayed(const Duration(seconds: 3));
  try {
    icon.changeColor("FF00FF");
    icon.resize(2);
  } catch (e) {
    print(e);
  }
}

// --- Remote Proxy ---
// import 'src/remote_proxy/remote_proxy_service.dart';
// import 'src/remote_proxy/service.dart';
//
// void main() async {
//   Service service = RemoteProxyService();
//   service.request();
// }
