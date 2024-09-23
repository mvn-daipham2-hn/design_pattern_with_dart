import '../implementation_class_hierarchy/tv.dart';

/// Abstraction
abstract class RemoteControl {
  TV implementor;

  RemoteControl(this.implementor);

  void on();
  void off();

  void setChannel(String channel) {
    implementor.tuneChannel(channel);
  }
}
