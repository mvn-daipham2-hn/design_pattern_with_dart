import 'turkey.dart';

import 'duck.dart';

/// [DuckAdapter] is Adapter
///
/// [Turkey] is Target
///
/// [Duck] is Adaptee
class DuckAdapter implements Turkey {
  Duck duck;

  DuckAdapter(this.duck);

  @override
  void fly() {
    print("Adapted Duck flying shorter distance");
  }

  @override
  void gobble() {
    duck.quack();
  }
}
