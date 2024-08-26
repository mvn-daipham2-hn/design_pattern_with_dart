class CeilingFan {
  static const int HIGH = 3;
  static const int MEDIUM = 2;
  static const int LOW = 1;
  static const int OFF = 0;
  String location;
  int speed = OFF;

  CeilingFan(this.location);

  void high() {
    speed = HIGH;
    print("Celling fan in $location is ON with HIGH speed");
  }

  void medium() {
    speed = MEDIUM;
    print("Celling fan in $location is ON with MEDIUM speed");
  }

  void low() {
    speed = LOW;
    print("Celling fan in $location is ON with LOW speed");
  }

  void off() {
    speed = OFF;
    print("Celling fan in $location is OFF");
  }

  int getSpeed() {
    return speed;
  }
}
