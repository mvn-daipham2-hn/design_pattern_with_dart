import 'day.dart';

// The vacation class represents the composite structure.
class Vacation {
  final vacationDays = <Day>[];

  void addDay(Day day) {
    vacationDays.add(day);
  }

  void showDetails() {
    for (Day day in vacationDays) {
      day.showDetails();
    }
  }
}
