import 'remote_control.dart';

/// Refined Abstraction
class ConcreteRemote extends RemoteControl {
  ConcreteRemote(super.implementor);

  int? currentStation;

  @override
  void off() {
    implementor.off();
  }

  @override
  void on() {
    implementor.on();
  }

  void setStation(int station) {
    currentStation = station;
    print("Station $currentStation is set");
  }

  void nextChannel() {
    if (currentStation != null) {
      currentStation = currentStation! + 1;
      print("Station $currentStation is set");
    }
  }

  void previousChannel() {
    if (currentStation != null) {
      currentStation = currentStation! - 1;
      print("Station $currentStation is set");
    }
  }
}
