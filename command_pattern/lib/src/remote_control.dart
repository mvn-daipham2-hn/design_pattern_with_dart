import 'commands/command.dart';
import 'commands/no_command.dart';

// Invoker
class RemoteControl {
  List<Command> onCommands = List.filled(7, NoCommand());
  List<Command> offCommands = List.filled(7, NoCommand());
  Command undoCommand = NoCommand();

  void setCommand({
    required int slot,
    required Command onCommand,
    required Command offCommand,
  }) {
    onCommands[slot] = onCommand;
    offCommands[slot] = offCommand;
  }

  void onButtonWasPushed(int slot) {
    onCommands[slot].execute();
    undoCommand = onCommands[slot];
  }

  void offButtonWasPushed(int slot) {
    offCommands[slot].execute();
    undoCommand = offCommands[slot];
  }

  void undoButtonWasPushed() {
    undoCommand.undo();
  }

  @override
  String toString() {
    StringBuffer stringBuffer = StringBuffer();
    stringBuffer.write("\n------ Remote Control -------\n");
    for (int i = 0; i < onCommands.length; i++) {
      stringBuffer.write(
        "[Slot$i]: ${onCommands[i].runtimeType} - ${offCommands[i].runtimeType}\n",
      );
    }
    stringBuffer.write("[Undo]: ${undoCommand.runtimeType}");
    return stringBuffer.toString();
  }
}
