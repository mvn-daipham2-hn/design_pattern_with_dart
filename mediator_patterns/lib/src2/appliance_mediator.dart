import 'alarm.dart';
import 'appliance.dart';
import 'calendar.dart';
import 'coffee_pot.dart';
import 'sprinkler.dart';

// ConcreteMediator
class ApplianceMediator {
  Alarm? alarm;
  CoffeePot? coffeePot;
  Calendar? calendar;
  Sprinkler? sprinkler;

  void createAppliances(
    Alarm alarm,
    CoffeePot coffeePot,
    Calendar calendar,
    Sprinkler sprinkler,
  ) {
    this.alarm = alarm;
    this.coffeePot = coffeePot;
    this.calendar = calendar;
    this.sprinkler = sprinkler;
  }

  void applianceChanged(Appliance appliance) {
    if (appliance == alarm) {
      calendar?.checkCalendar();
      sprinkler?.checkSprinkler();
      coffeePot?.startCoffee();
    }

    if (appliance == coffeePot) {
      coffeePot?.doCoffee();
    }

    if (appliance == calendar &&
        calendar != null &&
        calendar!.checkDayOfWeek()) {
      print("Some tasks scheduled at 5 a.m");
      Future.delayed(const Duration(seconds: 3), () {
        print("Starting to do tasks are scheduled...");
        sprinkler?.doSprinkler();
        coffeePot?.doCoffee();
        alarm?.doAlarm();
        print("Done!");
      });
    }

    if (appliance == sprinkler) {
      sprinkler?.checkShower();
      sprinkler?.checkTemp();
      sprinkler?.checkWeather();
    }
  }
}
