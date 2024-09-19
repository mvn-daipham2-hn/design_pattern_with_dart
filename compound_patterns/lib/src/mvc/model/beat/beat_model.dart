import 'beat_model_interface.dart';
import 'beat_observer.dart';
import 'bpm_observer.dart';
import 'fake_midi_objects/sequencer.dart';

class BeatModel implements BeatModelInterface {
  Sequencer? sequencer;
  List<BeatObserver> beatObservers = [];
  List<BPMObserver> bpmObservers = [];
  int bpm = 90;

  @override
  void initialize() {
    setUpMIDI();
    buildTrackAndStart();
  }

  @override
  void on() {
    sequencer?.start();
    setBPM(100);
    notifyBeatObservers();
  }

  @override
  void off() {
    setBPM(0);
    notifyBeatObservers();
    sequencer?.stop();
  }

  @override
  void setBPM(int bpm) {
    this.bpm = bpm;
    sequencer?.setTempoInBPM(bpm);
    notifyBeatObservers();
    notifyBPMObservers();
  }

  @override
  int getBPM() {
    return bpm;
  }

  @override
  void registerBPMObserver(BPMObserver o) {
    bpmObservers.add(o);
  }

  @override
  void registerBeatObserver(BeatObserver o) {
    beatObservers.add(o);
  }

  @override
  void removeBPMObserver(BPMObserver o) {
    bpmObservers.remove(o);
  }

  @override
  void removeBeatObserver(BeatObserver o) {
    beatObservers.remove(o);
  }

  void notifyBeatObservers() {
    for (BeatObserver observer in beatObservers) {
      observer.updateBeat();
    }
  }

  void notifyBPMObservers() {
    for (BPMObserver observer in bpmObservers) {
      observer.updateBPM();
    }
  }

  void setUpMIDI() {
    print("Setting up MIDI...");
  }

  void buildTrackAndStart() {
    print("Building track and start..");
  }
}
