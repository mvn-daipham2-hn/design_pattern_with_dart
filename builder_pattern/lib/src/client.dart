import 'abstract_builder.dart';

/// [Director] in UML diagram
class Client {
  void constructPlanner(AbstractBuilder builder) {
    builder.buildDay("Day 1");
    builder.addHotel("Day 1", "Grand Facadian");
    builder.addTickets("Part Tickets");
    builder.addDinning("Dinner");

    builder.buildDay('Day 2');
    builder.addHotel('Day 2', 'Grand Facadian');
    builder.addTickets("Part Tickets");
    builder.addSpecialEvent('Patterns on Ice');
    builder.addDinning("Dinner");

    builder.buildDay('Day 3');
    builder.addHotel('Day 3', 'Grand Facadian');
    builder.addTickets("Part Tickets");
    builder.addSpecialEvent("Cirque Du Patterns");
  }
}
