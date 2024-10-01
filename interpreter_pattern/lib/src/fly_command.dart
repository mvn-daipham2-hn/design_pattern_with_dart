import 'expression.dart';

class FlyCommand extends Expression {
  @override
  void interpret(String context) {
    print("`$context` control duck to fly");
  }
}
