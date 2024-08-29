import 'dart:io';

import 'caffeine_beverage.dart';

class Tea extends CaffeineBeverage {
  @override
  void addCondiments() {
    print("Adding Lemon");
  }

  @override
  void brew() {
    print("Steeping the tea");
  }

  @override
  bool customerWantsCondiments() {
    print('Would you like lemon with your tea (y/n)?');
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
