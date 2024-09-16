import '../../duck_call.dart';
import '../../mallard_duck.dart';
import '../../quackable.dart';
import '../../redhead_duck.dart';
import '../../rubber_duck.dart';
import 'abstract_duck_factory.dart';

class DuckFactory implements AbstractDuckFactory {
  @override
  Quackable createDuckCall() {
    return DuckCall();
  }

  @override
  Quackable createMallardDuck() {
    return MallardDuck();
  }

  @override
  Quackable createRedheadDuck() {
    return RedheadDuck();
  }

  @override
  Quackable createRubberDuck() {
    return RubberDuck();
  }
}
