import 'quack_observable.dart';

/// 5. The Quackologists also wanted to be notified when any quackable quacked.
/// So we used the [Observer Pattern] to let the Quackologists register as Quackable Observers.
/// Now they’re notified every time any Quackable quacks.
/// We used iterator again in this implementation.
/// The Quackologists can even use the [Observer Pattern] with their composites.
abstract class Observer {
  void update(QuackObservable duck);
}
