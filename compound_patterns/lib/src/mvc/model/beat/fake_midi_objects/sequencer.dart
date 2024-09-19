class Sequencer {
  void start() {
    print("MIDI start..");
  }

  void stop() {
    print("MIDI stop..");
  }

  void setTempoInBPM(int bpm) {
    print("Changing the tempo (speed) of playback to $bpm");
  }
}
