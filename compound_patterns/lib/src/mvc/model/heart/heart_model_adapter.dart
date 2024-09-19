import '../beat/beat_model_interface.dart';
import '../beat/beat_observer.dart';
import '../beat/bpm_observer.dart';
import 'heart_model_interface.dart';

class HeartModelAdapter implements BeatModelInterface {
  HeartModelInterface heartModel;

  HeartModelAdapter(this.heartModel);

  /// When getBPM() is called, we’ll just translate it to a getHeartRate() call on the heart model.
  @override
  int getBPM() {
    return heartModel.getHeartRate();
  }

  /// We don’t know what this would do to a heart,
  /// but it sounds scary. So we’ll just leave them as “no ops.”
  @override
  void initialize() {}

  /// We don’t know what this would do to a heart,
  /// but it sounds scary. So we’ll just leave them as “no ops.”
  @override
  void off() {}

  /// We don’t know what this would do to a heart,
  /// but it sounds scary. So we’ll just leave them as “no ops.”
  @override
  void on() {}

  @override
  void registerBPMObserver(BPMObserver o) {
    heartModel.registerBPMObserver(o);
  }

  @override
  void registerBeatObserver(BeatObserver o) {
    heartModel.registerBeatObserver(o);
  }

  @override
  void removeBPMObserver(BPMObserver o) {
    heartModel.removeBPMObserver(o);
  }

  @override
  void removeBeatObserver(BeatObserver o) {
    heartModel.removeBeatObserver(o);
  }

  /// We don’t want to do this on a heart! Again, let’s leave it as a “no op”.
  @override
  void setBPM(int bpm) {}
}
