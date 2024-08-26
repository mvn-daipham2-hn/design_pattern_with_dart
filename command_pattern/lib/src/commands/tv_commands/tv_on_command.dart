import '../../devices/tv.dart';
import '../command.dart';

class TVOnCommand implements Command {
  TV tv;

  TVOnCommand(this.tv);

  @override
  void execute() {
    tv.on();
  }

  @override
  void undo() {
    tv.off();
  }
}
