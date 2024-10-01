import 'dialog_director.dart';
import 'widget.dart';

// ConcreteColleague
class Button extends Widget {
  Button(DialogDirector director, this._name) : super(director);
  bool _isEnabled = false;
  final String _name;

  void setEnable(bool isEnabled) {
    print("Button $_name is ${isEnabled ? 'enabled' : 'disabled'}");
    _isEnabled = isEnabled;
  }

  bool isEnabled() {
    return _isEnabled;
  }

  void press() {
    if (_isEnabled) {
      print("Button $_name is pressed");
      changed();
    }
  }
}
