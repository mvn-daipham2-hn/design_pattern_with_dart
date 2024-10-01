import 'package:interpreter_pattern/src/quack_command.dart';
import 'package:interpreter_pattern/src/right_command.dart';

import 'fly_command.dart';

class Utils {
  static void evaluateCommand(String command) {
    switch (command) {
      case "right":
        RightCommand().interpret(command);
        break;
      case "fly":
        FlyCommand().interpret(command);
        break;
      case "quack":
        QuackCommand().interpret(command);
        break;
    }
  }
}
