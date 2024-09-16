import 'observer.dart';
import 'quack_observable.dart';

class Observable implements QuackObservable {
  List<Observer> observers = [];
  QuackObservable duck;

  Observable(this.duck);

  @override
  void notifyObservers() {
    for (Observer observer in observers) {
      observer.update(duck);
    }
  }

  @override
  void registerObserver(Observer observer) {
    observers.add(observer);
  }
}
