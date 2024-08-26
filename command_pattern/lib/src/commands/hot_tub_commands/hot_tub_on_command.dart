import '../../devices/hot_tub.dart';
import '../command.dart';

class HotTubOnCommand implements Command {
  HotTub hotTub;

  HotTubOnCommand(this.hotTub);

  @override
  void execute() {
    hotTub.on();
  }

  @override
  void undo() {
    hotTub.off();
  }
}
