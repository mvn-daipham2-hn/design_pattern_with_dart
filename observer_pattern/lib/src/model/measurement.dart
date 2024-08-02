class Measurement {
  double temperature;
  double humidity;
  double pressure;

  Measurement(this.temperature, this.humidity, this.pressure);

  Measurement.init() : this(0.0, 0.0, 0.0);
}
