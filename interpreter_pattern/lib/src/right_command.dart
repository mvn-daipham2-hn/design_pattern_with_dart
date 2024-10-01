import 'expression.dart';

class RightCommand extends Expression {
  @override
  void interpret(String context) {
    print("`$context` control duck to turn right");
  }
}
