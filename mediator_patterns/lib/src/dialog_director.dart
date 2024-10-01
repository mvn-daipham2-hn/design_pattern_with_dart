import 'widget.dart';

// Mediator
abstract class DialogDirector {
  void createWidgets();
  void showDialog();
  void widgetChange(Widget widget);
}
