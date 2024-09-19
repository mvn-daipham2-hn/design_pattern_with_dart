import 'dart:async';

import '../beat/beat_observer.dart';
import '../beat/bpm_observer.dart';
import 'heart_model_interface.dart';

class HeartModel implements HeartModelInterface {
  int heartRate = 70;
  bool increasing = true; // Flag to track if we are increasing or decreasing
  List<BPMObserver> bpmObservers = [];
  List<BeatObserver> beatObservers = [];

  HeartModel() {
    _fakeHeartRateChange();
  }

  void _fakeHeartRateChange() {
    // Fake heart rate change by time
    Timer.periodic(const Duration(seconds: 2), (timer) {
      if (increasing) {
        if (heartRate < 100) {
          heartRate += 10;
        } else {
          increasing = false; // Switch to decreasing
          heartRate -= 10;
        }
      } else {
        if (heartRate > 50) {
          heartRate -= 10;
        } else {
          increasing = true; // Switch to increasing
          heartRate += 10;
        }
      }
      notifyBPMObservers();
      notifyBeatObservers();
    });
  }

  @override
  int getHeartRate() {
    return heartRate;
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
}
