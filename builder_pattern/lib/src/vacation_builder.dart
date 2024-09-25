import 'abstract_builder.dart';
import 'day.dart';
import 'vacation.dart';

/// [ConcreteBuilder] in UML diagram
class VacationBuilder extends AbstractBuilder {
  Vacation vacation = Vacation();

  @override
  Vacation getVacationPlanner() {
    return vacation;
  }

  @override
  void addDinning(String dinning) {
    final day = vacation.vacationDays.last;
    day.addActivity("Dinning: $dinning");
  }

  @override
  void addHotel(String date, String hotelName) {
    final day = vacation.vacationDays.firstWhere(
      (day) => day.date == date,
    );
    day.addActivity("Hotel: $hotelName");
  }

  @override
  void addReservation(String reservation) {
    final day = vacation.vacationDays.last;
    day.addActivity("Reservation: $reservation");
  }

  @override
  void addSpecialEvent(String specialEvent) {
    final day = vacation.vacationDays.last;
    day.addActivity("SpecialEvent: $specialEvent");
  }

  @override
  void addTickets(String tickets) {
    final day = vacation.vacationDays.last;
    day.addActivity("Tickets: $tickets");
  }

  @override
  void buildDay(String date) {
    vacation.addDay(Day(date));
  }
}
