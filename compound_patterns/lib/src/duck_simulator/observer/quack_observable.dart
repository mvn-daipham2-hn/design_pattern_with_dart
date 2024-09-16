import 'observer.dart';

abstract class QuackObservable {
  void registerObserver(Observer observer);
  void notifyObservers();
}
