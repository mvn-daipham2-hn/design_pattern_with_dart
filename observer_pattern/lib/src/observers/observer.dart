import '../subject/observable.dart';

/// Rewrite with dart from java.util.Observer
/// > https://github.com/openjdk-mirror/jdk7u-jdk/blob/master/src/share/classes/java/util/Observer.java
abstract class Observer {
  void update(Observable observable, Object? arg);
}
