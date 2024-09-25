import 'vacation.dart';

/// [Builder] in UML diagram
abstract class AbstractBuilder {
  void buildDay(String date) {}
  void addHotel(String date, String hotelName) {}
  void addReservation(String reservation) {}
  void addSpecialEvent(String specialEvent) {}
  void addTickets(String tickets) {}
  void addDinning(String dinning) {}
  Vacation getVacationPlanner();
}
