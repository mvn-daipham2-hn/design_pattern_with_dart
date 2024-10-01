import 'expression.dart';

class QuackCommand extends Expression {
  @override
  void interpret(String context) {
    print("`$context` control duck to quack");
  }
}
