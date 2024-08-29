import 'dart:io';

import 'caffeine_beverage.dart';

/// A spiced tea that typically contains black tea leaves, providing a moderate amount of caffeine.
class Chai extends CaffeineBeverage {
  @override
  void addCondiments() {
    print("Adding ice");
  }

  @override
  void brew() {
    print("Brewing chai");
  }

  @override
  bool customerWantsCondiments() {
    print('Would you like add ice to your chai (y/n)?');
    String? answer = stdin.readLineSync();
    if (answer == "y" || answer == "Y") {
      return true;
    } else if (answer == "n" || answer == "N") {
      return false;
    } else {
      return true;
    }
  }
}
