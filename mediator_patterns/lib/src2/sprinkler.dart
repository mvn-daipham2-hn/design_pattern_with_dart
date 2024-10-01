import 'appliance.dart';
import 'appliance_mediator.dart';

class Sprinkler extends Appliance {
  Sprinkler(ApplianceMediator mediator) : super(mediator);

  void checkSprinkler() {
    print("Checking sprinkler...");
    changed();
  }

  void checkShower() {
    print("Checking shower...");
  }

  void checkTemp() {
    print("Checking the temperature of water...");
  }

  void checkWeather() {
    print("Checking weather...");
  }

  void doSprinkler() {
    print("Do sprinkler");
  }
}
