import 'caffeine_beverage.dart';

/// A type of powdered green tea, more concentrated in caffeine compared to regular green tea.
class Matcha extends CaffeineBeverage {
  @override
  void addCondiments() {
    print("Adding sugar");
  }

  @override
  void brew() {
    print("Brewing matcha");
  }
}
