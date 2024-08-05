import '../display_element.dart';
import '../subject/observable.dart';
import '../subject/weather_data.dart';
import 'observer.dart';

class WeatherStatsDisplay implements Observer, DisplayElement {
  final _temperatures = [];
  Observable observable;

  WeatherStatsDisplay(this.observable) {
    observable.addObserver(this);
  }

  void subscribe() => observable.addObserver(this);

  void unsubscribe() => observable.deleteObserver(this);

  @override
  void display() {
    if (_temperatures.isEmpty) {
      print("Do not have any measurement information!");
    } else {
      final max = _temperatures.fold(
        _temperatures[0] ?? 0,
        (current, next) => current > next ? current : next,
      );
      final min = _temperatures.fold(
        _temperatures[0] ?? 0,
        (current, next) => current > next ? next : current,
      );
      final avg = _temperatures.isEmpty
          ? 0
          : _temperatures.reduce((current, next) => current + next) /
              _temperatures.length;
      print('Weather Stats: Avg.temp $avg, Min.temp $min, Max.temp $max');
    }
  }

  @override
  void update(Observable observable, Object? arg) {
    if (observable is WeatherData) {
      _temperatures.add(observable.temperature);
      display();
    }
  }
}
