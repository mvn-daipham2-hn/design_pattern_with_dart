import 'observer/observable.dart';
import 'observer/observer.dart';
import 'quackable.dart';

class RubberDuck extends Quackable {
  late Observable observable = Observable(this);

  @override
  void quack() {
    print("Squeak");
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
