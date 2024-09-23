import 'tv.dart';

/// Concrete Implementor
class Sony extends TV {
  @override
  void off() {
    print("Sony TV is off");
  }

  @override
  void on() {
    print("Sony TV is on");
  }

  @override
  void tuneChannel(String channel) {
    print("Sony TV is setting channel $channel");
  }
}
