import '../../quackable.dart';

/// 3. But the Quackologists were worried they’d forget to add the QuackCounter decorator.
/// So we used the [Abstract Factory Pattern] to create ducks for them.
/// Now, whenever they want a duck, they ask the factory for one,
/// and it hands back a decorated duck.
abstract class AbstractDuckFactory {
  Quackable createMallardDuck();
  Quackable createRedheadDuck();
  Quackable createDuckCall();
  Quackable createRubberDuck();
}
