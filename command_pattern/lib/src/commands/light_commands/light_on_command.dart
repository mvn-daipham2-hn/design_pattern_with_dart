import '../../devices/light.dart';
import '../command.dart';

// Command
class LightOnCommand implements Command {
  // Receive is wrapped
  Light light;

  // The constructor is passed the specific light that this command is going to control
  // - say the living room light - and stashes it in the light instance variable.
  // When execute gets called, this is the light object that is going to be the Receiver of the request.
  LightOnCommand(this.light);

  @override
  void execute() {
    light.on();
  }

  @override
  void undo() {
    light.off();
  }
}
