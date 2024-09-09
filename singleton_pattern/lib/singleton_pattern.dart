library singleton_pattern;

import 'src/non_singleton.dart';
import 'src/singleton.dart';

void main() {
  final singleton = Singleton();
  final singleton2 = Singleton();
  print(
      "singleton & singleton2 have the same instance? ${identical(singleton, singleton2)}");

  final singletonAnother = Singleton2.instance;
  final singletonAnother2 = Singleton2.instance;
  print(
      "singletonAnother & singletonAnother2 have the same instance? ${identical(singletonAnother, singletonAnother2)}");

  final nonSingleton = NonSingleton();
  final nonSingleton2 = NonSingleton();
  print(
      "nonSingleton & nonSingleton2 have the same instance? ${identical(nonSingleton, nonSingleton2)}");
}
