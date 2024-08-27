import 'cd_player.dart';
import 'dvd_player.dart';
import 'tuner.dart';

class Amplifier {
  Tuner? tuner;
  DvdPlayer? dvdPlayer;
  CdPlayer? cdPlayer;

  void on() {
    print("Amplifier is ON");
  }

  void off() {
    print("Amplifier is OFF");
  }

  void setCd() {}

  void setDvd(DvdPlayer dvd) {
    print("Set DVD for amplifier successfully!");
  }

  void setStereoSound() {}

  void setSurroundSound() {}

  void setTuner() {}

  void setVolume(int value) {
    print("Set volume to $value for amplifier");
  }
}
