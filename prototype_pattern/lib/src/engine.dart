import 'prototype.dart';

class Engine implements Prototype<Engine> {
  String type;

  Engine(this.type);

  @override
  Engine clone() {
    return Engine(type);
  }

  @override
  String toString() {
    return 'Engine{type: $type}';
  }
}
