import 'help_handler.dart';
import 'widget.dart';

class Dialog extends Widget {
  Dialog(HelpHandler? w, int topic) : super(null, topic) {
    if (w != null) {
      setHandler(w, topic);
    }
  }

  @override
  void handleHelp() {
    if (hasHelp()) {
      print("Dialog: I have help info");
    } else {
      super.handleHelp();
    }
  }
}
