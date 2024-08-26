class Stereo {
  String location;

  Stereo(this.location);

  void on() {
    print("Stereo in $location is ON");
  }

  void off() {
    print("Stereo in $location is OFF");
  }

  void setCD() {
    print("New CD is inserted");
  }

  void setDVD() {}

  void setRadio() {}

  void setVolume(int volume) {
    print("Volume now is $volume");
  }
}
