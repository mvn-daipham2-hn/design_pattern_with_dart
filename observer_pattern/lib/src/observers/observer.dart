import '../model/measurement.dart';

abstract class Observer {
  void update(Measurement measurement);
}
