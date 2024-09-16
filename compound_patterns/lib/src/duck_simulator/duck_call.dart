import 'quackable.dart';

import 'observer/observable.dart';
import 'observer/observer.dart';

class DuckCall extends Quackable {
  late Observable observable = Observable(this);

  @override
  void quack() {
    print("Kwak");
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
