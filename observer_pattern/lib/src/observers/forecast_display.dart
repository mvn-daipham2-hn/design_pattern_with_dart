import 'dart:math';

import '../display_element.dart';
import '../subject/observable.dart';
import '../subject/weather_data.dart';
import 'observer.dart';

class ForecastDisplay implements Observer, DisplayElement {
  Observable observable;

  ForecastDisplay(this.observable) {
    observable.addObserver(this);
  }

  void subscribe() => observable.addObserver(this);

  void unsubscribe() => observable.deleteObserver(this);

  @override
  void display() {
    // For funny test!!!
    final testValue = Random().nextInt(3);
    switch (testValue) {
      case 0:
        print("Today, maybe rainy");
      case 1:
        print("Today, maybe sunny");
      case 2:
        print("Today, maybe windy and dry");
    }
  }

  @override
  void update(Observable observable, Object? arg) {
    if (observable is WeatherData) {
      display();
    }
  }
}
