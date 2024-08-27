import 'turkey.dart';

class WildTurkey implements Turkey {
  @override
  void fly() {
    print("I'm flying a short distance");
  }

  @override
  void gobble() {
    print("Gobble Gobble");
  }
}
