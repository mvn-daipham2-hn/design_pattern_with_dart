import 'quackable.dart';

import 'observer/observable.dart';
import 'observer/observer.dart';

class MallardDuck extends Quackable {
  late Observable observable = Observable(this);

  @override
  void quack() {
    print("Quack");
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
