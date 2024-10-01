import 'appliance_mediator.dart';

// Colleague
abstract class Appliance {
  ApplianceMediator mediator;

  Appliance(this.mediator);

  void changed() {
    mediator.applianceChanged(this);
  }
}
