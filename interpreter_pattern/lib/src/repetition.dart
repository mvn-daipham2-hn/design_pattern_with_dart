import 'expression.dart';
import 'utils.dart';
import 'variable.dart';

class Repetition extends Expression {
  @override
  void interpret(String context) {
    int startParamIndex = context.indexOf("(");
    int endParamIndex = context.indexOf(")");
    String param = context.substring(startParamIndex + 1, endParamIndex);
    String command = context.substring(endParamIndex + 2);
    print("----------");
    print("There is a loop here, with:");
    Variable().interpret(param);
    Utils.evaluateCommand(command);
    print("----------");
  }
}
