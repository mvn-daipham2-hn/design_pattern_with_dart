import 'package:flutter/widgets.dart';

abstract class ControllerInterface {
  Widget getView();
  void start();
  void stop();
  void increaseBPM();
  void decreaseBPM();
  void setBPM(int bpm);
}
