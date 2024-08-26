import '../../devices/tv.dart';
import '../command.dart';

class TVOffCommand implements Command {
  TV tv;

  TVOffCommand(this.tv);

  @override
  void execute() {
    tv.off();
  }

  @override
  void undo() {
    tv.on();
  }
}
