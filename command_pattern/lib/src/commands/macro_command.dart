import 'command.dart';

class MacroCommand implements Command {
  final List<Command> commands;

  MacroCommand(this.commands);

  @override
  void execute() {
    for (final command in commands) {
      command.execute();
    }
  }

  @override
  void undo() {
    for (final command in commands) {
      command.undo();
    }
  }
}
