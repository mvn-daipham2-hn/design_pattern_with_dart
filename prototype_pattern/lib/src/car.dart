import 'engine.dart';
import 'prototype.dart';

class Car implements Prototype<Car> {
  String model;
  String color;
  Engine engine; // Nested object

  Car(this.model, this.color, this.engine);

  @override
  Car clone() {
    return Car(
      model,
      color,
      engine.clone(), // Deep clone of Engine object
    );
  }

  /// Initializing clones
  Car copyWith({
    String? model,
    String? color,
    Engine? engine,
  }) {
    return Car(
      model ?? this.model,
      color ?? this.color,
      engine?.clone() ??
          this
              .engine
              .clone(), // Deep clone the engine if provided, else clone the existing one
    );
  }

  @override
  String toString() {
    return 'Car{model: $model, color: $color, engine: $engine}';
  }
}
