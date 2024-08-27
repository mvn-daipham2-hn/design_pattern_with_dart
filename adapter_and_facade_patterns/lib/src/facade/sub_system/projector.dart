import 'dvd_player.dart';

class Projector {
  DvdPlayer? dvdPlayer;

  void on() {
    print("Projector is ON");
  }

  void off() {
    print("Projector is OFF");
  }

  void tvMode() {}

  void wideScreenMode() {
    print("Projector is set to wide-screen-mode");
  }
}
