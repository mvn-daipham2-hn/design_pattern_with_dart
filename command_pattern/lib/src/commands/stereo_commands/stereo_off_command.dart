import '../../devices/stereo.dart';
import '../command.dart';

class StereoOffCommand implements Command {
  Stereo stereo;

  StereoOffCommand(this.stereo);

  @override
  void execute() {
    stereo.off();
  }

  @override
  void undo() {
    stereo.on();
    stereo.setCD();
    stereo.setVolume(11);
  }
}
