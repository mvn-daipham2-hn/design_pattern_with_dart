// Receiver
class Light {
  String location;

  Light(this.location);

  void on() {
    print("Light in $location is ON");
  }

  void off() {
    print("Light in $location is OFF");
  }
}
