library prototype_pattern;

import 'src/car.dart';
import 'src/engine.dart';

void main() {
  Car originalCar = Car(
    "BMW",
    "Blue",
    Engine("B38"),
  );

  Car clonedCar = originalCar.clone();

  // Try change color
  clonedCar.color = "Red";

  Car copiedWithCar = originalCar.copyWith(
    model: "Vin",
    engine: Engine("Electric"),
  );

  // Try change color
  copiedWithCar.color = "Black";

  print("originalCar: $originalCar");
  print("clonedCar: $clonedCar");
  print("copiedWithCar: $copiedWithCar");
}
