import '../../devices/light.dart';
import '../command.dart';

class LightOffCommand implements Command {
  Light light;

  LightOffCommand(this.light);

  @override
  void execute() {
    light.off();
  }

  @override
  void undo() {
    light.on();
  }
}
