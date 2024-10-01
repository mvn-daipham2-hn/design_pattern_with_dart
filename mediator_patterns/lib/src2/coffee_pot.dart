import 'appliance.dart';
import 'appliance_mediator.dart';

class CoffeePot extends Appliance {
  CoffeePot(ApplianceMediator mediator) : super(mediator);

  void startCoffee() {
    print("Starting brew coffee...");
    changed();
  }

  void doCoffee() {
    print("Do coffee");
  }
}
