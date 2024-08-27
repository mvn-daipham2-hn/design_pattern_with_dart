import 'duck.dart';

class MallardDuck implements Duck {
  @override
  void fly() {
    print("I'm flying");
  }

  @override
  void quack() {
    print("Quack");
  }
}
