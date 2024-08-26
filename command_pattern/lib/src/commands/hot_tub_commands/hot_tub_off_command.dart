import '../../devices/hot_tub.dart';
import '../command.dart';

class HotTubOffCommand implements Command {
  HotTub hotTub;

  HotTubOffCommand(this.hotTub);

  @override
  void execute() {
    hotTub.off();
  }

  @override
  void undo() {
    hotTub.on();
  }
}
