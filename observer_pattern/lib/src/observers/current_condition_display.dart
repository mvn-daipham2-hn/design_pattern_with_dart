import '../display_element.dart';
import '../subject/observable.dart';
import '../subject/weather_data.dart';
import 'observer.dart';

class CurrentConditionDisplay implements Observer, DisplayElement {
  double? _temperature;
  double? _humidity;
  Observable observable;

  CurrentConditionDisplay(this.observable) {
    observable.addObserver(this);
  }

  void subscribe() => observable.addObserver(this);

  void unsubscribe() => observable.deleteObserver(this);

  @override
  void display() {
    if (_temperature == null && _humidity == null) {
      print("Do not have any measurement information!");
    } else {
      print("Current condition "
          "${_temperature == null ? '' : '$_temperature + F degrees'}  "
          "${_humidity == null ? '' : '& $_humidity % humidity'}");
    }
  }

  @override
  void update(Observable observable, Object? arg) {
    if (observable is WeatherData) {
      _temperature = observable.temperature;
      _humidity = observable.humidity;
      display();
    }
  }
}
