import 'observer.dart';
import 'quack_observable.dart';

class Quackologist implements Observer {
  @override
  void update(QuackObservable duck) {
    print("Quackologist: ${duck.runtimeType} just quacked.");
  }
}
