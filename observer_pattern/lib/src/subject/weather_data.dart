import 'observable.dart';

class WeatherData extends Observable {
  double? _temperature;
  double? _humidity;
  double? _pressure;

  void measurementsChanged(
    double? temperature,
    double? humidity,
    double? pressure,
  ) {
    _temperature = temperature;
    _humidity = humidity;
    _pressure = pressure;
    setChanged();
    notifyObservers();
  }

  double? get pressure => _pressure;

  double? get humidity => _humidity;

  double? get temperature => _temperature;
}
