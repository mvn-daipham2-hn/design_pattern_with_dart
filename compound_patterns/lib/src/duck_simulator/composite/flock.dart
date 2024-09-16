import '../observer/observer.dart';
import '../quackable.dart';

/// 4. We had management problems keeping track of all those ducks and geese and quackables.
/// So we used the [Composite Pattern] to group quackables into Flocks.
/// The pattern also allows the quackologist to create sub-Flocks to manage duck families.
/// We used the [Iterator Pattern] in our implementation.
class Flock implements Quackable {
  /// Here, we’ve decided to keep the composite’s child maintenance methods separate from the leaf nodes:
  /// that is, only Flocks have the add() method.
  /// We know it doesn’t make sense to try to add something to a Duck, and in this implementation,
  /// you can’t. You can only add() to a Flock. So this design is safer
  /// – you can’t call methods that don’t make sense on components – but it’s less transparent.
  /// Now the client has to know that a Quackable is a Flock in order to add Quackables to it.
  ///
  /// As always, there are trade-offs when you do OO design and you need to consider
  /// them as you create your own composites.
  List<Quackable> quackers = [];

  void add(Quackable quacker) {
    quackers.add(quacker);
  }

  @override
  void quack() {
    Iterator iterator = quackers.iterator;
    while (iterator.moveNext()) {
      Quackable quacker = iterator.current;
      quacker.quack();
    }
  }

  @override
  void notifyObservers() {
    // do nothing
  }

  @override
  void registerObserver(Observer observer) {
    for (Quackable quacker in quackers) {
      quacker.registerObserver(observer);
    }
  }
}
