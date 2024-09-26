import 'help_handler.dart';

class Application extends HelpHandler {
  Application(HelpHandler? successor, int topic) : super(successor, topic);

  @override
  void setHandler(HelpHandler helpHandler, int topic) {}

  @override
  void handleHelp() {
    print("Application: This is help info");
  }
}
