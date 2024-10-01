import 'appliance.dart';
import 'appliance_mediator.dart';

class Calendar extends Appliance {
  Calendar(ApplianceMediator mediator) : super(mediator);

  void checkCalendar() {
    print("Checking calendar...");
  }

  bool checkDayOfWeek() {
    print("Checking day of week...");
    return true;
  }

  void schedule() {
    print("Scheduling tasks...");
    changed();
  }
}
