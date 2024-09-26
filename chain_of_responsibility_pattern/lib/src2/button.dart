import 'widget.dart';

class Button extends Widget {
  Button(Widget? d, int topic) : super(d, topic);

  @override
  void handleHelp() {
    if (hasHelp()) {
      print("Button: I have help info");
    } else {
      super.handleHelp();
    }
  }
}
