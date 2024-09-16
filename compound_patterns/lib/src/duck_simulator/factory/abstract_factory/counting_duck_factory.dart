import '../../decorator/quack_counter.dart';
import '../../duck_call.dart';
import '../../mallard_duck.dart';
import '../../quackable.dart';
import '../../redhead_duck.dart';
import '../../rubber_duck.dart';
import 'abstract_duck_factory.dart';

class CountingDuckFactory extends AbstractDuckFactory {
  @override
  Quackable createDuckCall() {
    return QuackCounter(DuckCall());
  }

  @override
  Quackable createMallardDuck() {
    return QuackCounter(MallardDuck());
  }

  @override
  Quackable createRedheadDuck() {
    return QuackCounter(RedheadDuck());
  }

  @override
  Quackable createRubberDuck() {
    return QuackCounter(RubberDuck());
  }
}
