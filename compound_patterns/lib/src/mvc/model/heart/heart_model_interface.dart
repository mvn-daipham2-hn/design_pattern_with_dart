import '../beat/beat_observer.dart';
import '../beat/bpm_observer.dart';

abstract class HeartModelInterface {
  int getHeartRate();
  void registerBeatObserver(BeatObserver o);
  void removeBeatObserver(BeatObserver o);
  void registerBPMObserver(BPMObserver o);
  void removeBPMObserver(BPMObserver o);
}
