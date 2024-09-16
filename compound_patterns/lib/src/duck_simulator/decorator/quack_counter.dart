import '../observer/observer.dart';
import '../quackable.dart';

/// 2. Then, the Quackologists decided they wanted to count quacks.
/// So we used the [Decorator Pattern] to add a QuackCounter decorator
/// that keeps track of the number of times quack() is called,
/// and then delegates the quack to the Quackable it’s wrapping.
class QuackCounter implements Quackable {
  Quackable duck;
  // And we’re counting ALL
  // quacks, so we’ll use a static variable to keep track.
  static int _count = 0;

  QuackCounter(this.duck);

  @override
  void quack() {
    duck.quack();
    _count += 1;
  }

  static int get getQuacks => _count;

  @override
  void notifyObservers() {
    duck.notifyObservers();
  }

  @override
  void registerObserver(Observer observer) {
    duck.registerObserver(observer);
  }
}
