import 'amplifier.dart';

class DvdPlayer {
  Amplifier? amplifier;
  String? playingMovie;

  void on() {
    print("DvdPlayer is ON");
  }

  void off() {
    print("DvdPlayer is OFF");
  }

  void eject() {
    print("DvdPlayer is EJECT");
  }

  void pause() {}

  void play(String movie) {
    playingMovie = movie;
    print("DvdPlayer is playing '$playingMovie'");
  }

  void setSurroundAudio() {}

  void setTwoChannelAudio() {}

  void stop() {
    if (playingMovie != null) {
      print("DvdPlayer is STOP movie '$playingMovie'");
    }
  }
}
