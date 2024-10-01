import 'dialog_director.dart';

// Colleague
abstract class Widget {
  DialogDirector director;

  Widget(this.director);

  void changed() {
    director.widgetChange(this);
  }
}
