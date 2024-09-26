import 'help_handler.dart';

class Widget extends HelpHandler {
  Widget? parent;

  Widget(Widget? w, int topic) : super(w, topic) {
    parent = w;
  }
}
