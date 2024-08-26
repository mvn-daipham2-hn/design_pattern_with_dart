import '../../devices/ceiling_fan.dart';
import '../command.dart';

class CeilingFanHighCommand implements Command {
  CeilingFan ceilingFan;
  int? prevSpeed;

  CeilingFanHighCommand(this.ceilingFan);

  @override
  void execute() {
    prevSpeed = ceilingFan.getSpeed();
    ceilingFan.high();
  }

  @override
  void undo() {
    if (prevSpeed == CeilingFan.HIGH) {
      ceilingFan.high();
    } else if (prevSpeed == CeilingFan.MEDIUM) {
      ceilingFan.medium();
    } else if (prevSpeed == CeilingFan.LOW) {
      ceilingFan.low();
    } else if (prevSpeed == CeilingFan.OFF) {
      ceilingFan.off();
    }
  }
}
