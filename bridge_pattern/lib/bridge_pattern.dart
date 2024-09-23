library bridge_pattern;

import 'src/abstraction_class_hierarchy/concrete_remote.dart';
import 'src/implementation_class_hierarchy/sony.dart';
import 'src/implementation_class_hierarchy/tv.dart';

void main() {
  TV sony = Sony();
  ConcreteRemote remoteControl = ConcreteRemote(sony);

  remoteControl.on();
  remoteControl.setStation(112);
  remoteControl.setChannel("VTV1");
  remoteControl.nextChannel();
}
