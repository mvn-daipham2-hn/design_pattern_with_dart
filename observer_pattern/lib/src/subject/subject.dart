import '../observers/observer.dart';

/// Should use Observable instead of this
abstract class Subject {
  void registerObserver(Observer observer);
  void removeObserver(Observer observer);
  void notifyObservers();
}
