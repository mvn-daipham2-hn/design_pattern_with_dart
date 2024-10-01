import 'dialog_director.dart';
import 'widget.dart';

// ConcreteColleague
class ListBox extends Widget {
  ListBox(DialogDirector director) : super(director);
  String _currentSelection = "";

  String getSelection() {
    return _currentSelection;
  }

  void setSelection(String newValue) {
    print("Select `$newValue` from list box");
    _currentSelection = newValue;
    changed();
  }
}
