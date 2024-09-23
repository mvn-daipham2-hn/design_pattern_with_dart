import 'tv.dart';

/// Concrete Implementor
class RCA extends TV {
  @override
  void off() {
    print("RCA TV is off");
  }

  @override
  void on() {
    print("RCA TV is on");
  }

  @override
  void tuneChannel(String channel) {
    print("RCA TV is setting channel $channel");
  }
}
