import '../observers/observer.dart';

/// Rewrite with dart from java.util.Observable
/// > https://github.com/openjdk-mirror/jdk7u-jdk/blob/master/src/share/classes/java/util/Observable.java
class Observable {
  bool _changed = false;
  final obs = <Observer>{};

  void addObserver(Observer o) {
    if (!obs.contains(o)) {
      obs.add(o);
    }
  }

  void deleteObserver(Observer o) {
    obs.remove(o);
  }

  void deleteObservers() {
    obs.clear();
  }

  void notifyObservers() {
    notifyObserversWithArg(null);
  }

  /// If [arg] is null => PULL model(Observable just push notification, Observers will pull value that it need)
  ///
  /// If [arg] is not null => PUSH model(Observable will push data directly)
  void notifyObserversWithArg(Object? arg) {
    if (!_changed) {
      return;
    }

    clearChanged();
    // We capture `obs` at this point to ensure stability throughout notify processing.
    // And the worst result of any potential race-condition here is that:
    // 1) a newly-added Observer will miss a notification in progress
    // 2) a recently unregistered Observer will be wrongly notified when it doesn't care
    Set<Observer> arrLocal = Set.of(obs);
    for (var observer in arrLocal) {
      observer.update(this, arg);
    }
  }

  void setChanged() {
    _changed = true;
  }

  void clearChanged() {
    _changed = false;
  }

  bool hasChanged() {
    return _changed;
  }

  int countObservers() {
    return obs.length;
  }
}
