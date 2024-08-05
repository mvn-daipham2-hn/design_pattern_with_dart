library observer_pattern;

export 'src/display_element.dart';
export 'src/observers/current_condition_display.dart';
export 'src/observers/forecast_display.dart';
export 'src/observers/observer.dart';
export 'src/observers/weather_stats_display.dart';
export 'src/subject/observable.dart';
export 'src/subject/weather_data.dart';

// import 'src/observers/current_condition_display.dart';
// import 'src/observers/forecast_display.dart';
// import 'src/observers/weather_stats_display.dart';
// import 'src/subject/weather_data.dart';
//
// void main() {
//   WeatherData weatherData = WeatherData();
//   CurrentConditionDisplay currentDisplay = CurrentConditionDisplay(weatherData);
//   WeatherStatsDisplay weatherStats = WeatherStatsDisplay(weatherData);
//   ForecastDisplay forecastDisplay = ForecastDisplay(weatherData);
//
//   weatherData.measurementsChanged(25, 30, 30.4);
//   currentDisplay.unsubscribe();
//   print('\nThe weather condition is changing...');
//   weatherData.measurementsChanged(34, 20.5, 15.1);
//   weatherStats.unsubscribe();
//   print('\nThe weather condition is changing...');
//   weatherData.measurementsChanged(9, 20, 40.6);
//   forecastDisplay.unsubscribe();
//   print('\nThe weather condition is changing...');
//   weatherData.measurementsChanged(22, 25.7, 30.5);
// }
