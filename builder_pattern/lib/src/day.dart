// The Day class which represents a day in the vacation.
class Day {
  final String date;
  final List<String> _activities = [];

  Day(this.date);

  void addActivity(String activity) {
    _activities.add(activity);
  }

  void showDetails() {
    print("Day: $date");
    for (String activity in _activities) {
      print("- $activity");
    }
  }
}
