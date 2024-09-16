import '../observer/observable.dart';
import '../observer/observer.dart';
import '../quackable.dart';
import 'goose.dart';

/// 1. A goose came along and wanted to act like a Quackable too.
/// So we used the [Adapter Pattern] to adapt the goose to a Quackable.
/// Now, you can call quack() on a goose wrapped in the adapter and it will honk!
class GooseAdapter implements Quackable {
  Goose goose;
  late Observable observable = Observable(this);

  GooseAdapter(this.goose);

  @override
  void quack() {
    goose.honk();
    notifyObservers();
  }

  @override
  void notifyObservers() {
    observable.notifyObservers();
  }

  @override
  void registerObserver(Observer observer) {
    observable.registerObserver(observer);
  }
}
