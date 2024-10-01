import 'button.dart';
import 'dialog_director.dart';
import 'entry_field.dart';
import 'list_box.dart';
import 'widget.dart';

// ConcreteMediator
class FontDialogDirector extends DialogDirector {
  Button? okButton;
  Button? cancelButton;
  ListBox? listFontBox;
  EntryField? fontEntryField;

  @override
  void createWidgets() {
    print("Creating widgets for dialog...");
    okButton = Button(this, "OK");
    cancelButton = Button(this, "Cancel");
    listFontBox = ListBox(this);
    fontEntryField = EntryField(this);

    okButton?.setEnable(true);
    cancelButton?.setEnable(true);
  }

  @override
  void showDialog() {
    print("Showing a font dialog on the screen...");
  }

  @override
  void widgetChange(Widget widget) {
    if (widget == listFontBox) {
      if (fontEntryField != null && listFontBox != null) {
        fontEntryField!.setText(listFontBox!.getSelection());
      }
    }
    //
    else if (widget == okButton) {
      print("Applied new font and dismiss dialog");
    }
    //
    else if (widget == cancelButton) {
      print("Dismiss dialog");
    }
  }
}
