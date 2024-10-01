import 'dialog_director.dart';
import 'widget.dart';

// ConcreteColleague
class EntryField extends Widget {
  EntryField(DialogDirector director) : super(director);
  String currentText = "";

  void setText(String newValue) {
    print("EntryField filled with new value `$newValue`");
    currentText = newValue;
  }

  String getText() {
    return currentText;
  }
}
