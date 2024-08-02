import '../model/measurement.dart';
import '../observers/observer.dart';
import 'subject.dart';

class WeatherData implements Subject {
  final _observers = <Observer>[];
  Measurement state = Measurement.init();

  @override
  void notifyObservers() {
    for (var observer in _observers) {
      observer.update(state);
    }
  }

  @override
  void registerObserver(Observer observer) {
    _observers.add(observer);
  }

  @override
  void removeObserver(Observer observer) {
    _observers.remove(observer);
  }

  void measurementsChanged(Measurement newMeasurement) {
    state = newMeasurement;
    notifyObservers();
  }
}
