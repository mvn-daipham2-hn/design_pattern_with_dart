import '../../adapter/goose.dart';
import '../../adapter/goose_adapter.dart';
import '../../decorator/quack_counter.dart';
import '../../duck_call.dart';
import '../../mallard_duck.dart';
import '../../quackable.dart';
import '../../redhead_duck.dart';
import '../../rubber_duck.dart';
import 'duck_type.dart';

class DuckCreator {
  static Quackable createDuck(DuckType type) {
    switch (type) {
      case DuckType.duckCall:
        return QuackCounter(DuckCall());
      case DuckType.mallard:
        return QuackCounter(MallardDuck());
      case DuckType.redhead:
        return QuackCounter(RedheadDuck());
      case DuckType.rubber:
        return QuackCounter(RubberDuck());
      case DuckType.gooseDuck:
        return GooseAdapter(Goose());
    }
  }
}
