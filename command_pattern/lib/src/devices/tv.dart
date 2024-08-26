class TV {
  String location;

  TV(this.location);

  void on() {
    print("TV in $location is ON");
  }

  void off() {
    print("TV in $location is OFF");
  }

  void setInputChannel(String channel) {
    print("TV is showing $channel channel");
  }

  void setVolume(int volume) {
    print("TV is $volume volume");
  }
}
