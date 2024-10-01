import 'appliance.dart';
import 'appliance_mediator.dart';

class Alarm extends Appliance {
  Alarm(ApplianceMediator mediator) : super(mediator);

  void checkAlarm() {
    print("Checking alarm..");
  }

  void doAlarm() {
    print("Do alarm");
  }

  void pressSnoozeButton() {
    print("The Snooze button is pressed");
    changed();
  }
}
