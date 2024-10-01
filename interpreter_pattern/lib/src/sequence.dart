import 'expression.dart';
import 'repetition.dart';
import 'utils.dart';

class Sequence extends Expression {
  @override
  void interpret(String context) {
    final subContexts = context.split(";");
    for (final subContext in subContexts) {
      Utils.evaluateCommand(subContext);
      if (subContext.startsWith("while")) {
        Repetition().interpret(subContext);
      }
    }
  }
}
