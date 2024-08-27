import 'duck.dart';
import 'turkey.dart';

/// [TurkeyAdapter] is Adapter
///
/// [Duck] is Target
///
/// [Turkey] is Adaptee
class TurkeyAdapter implements Duck {
  Turkey turkey;

  TurkeyAdapter(this.turkey);

  @override
  void fly() {
    for (int i = 0; i < 5; i++) {
      turkey.fly();
    }
  }

  @override
  void quack() {
    turkey.gobble();
  }
}
