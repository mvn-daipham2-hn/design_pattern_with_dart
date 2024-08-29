import 'caffeine_beverage.dart';

class Coffee extends CaffeineBeverage {
  @override
  void addCondiments() {
    print("Adding Sugar and Milk");
  }

  @override
  void brew() {
    print("Dripping Coffee through filter");
  }
}
