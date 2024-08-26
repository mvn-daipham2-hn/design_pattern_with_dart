import '../../devices/stereo.dart';
import '../command.dart';

class StereoOnWithCDCommand implements Command {
  Stereo stereo;

  StereoOnWithCDCommand(this.stereo);

  @override
  void execute() {
    stereo.on();
    stereo.setCD();
    stereo.setVolume(11);
  }

  @override
  void undo() {
    stereo.off();
  }
}
