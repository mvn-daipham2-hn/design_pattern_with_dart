import 'beat_observer.dart';
import 'bpm_observer.dart';

abstract class BeatModelInterface {
  void initialize();
  void on();
  void off();
  void setBPM(int bpm);
  int getBPM();
  void registerBeatObserver(BeatObserver o);
  void removeBeatObserver(BeatObserver o);
  void registerBPMObserver(BPMObserver o);
  void removeBPMObserver(BPMObserver o);
}
