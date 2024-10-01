import 'expression.dart';

class Variable extends Expression {
  @override
  void interpret(String context) {
    if (_hasMatch(context)) {
      print('`$context` is a valid variable');
    } else {
      print("`$context` is NOT a valid variable");
    }
  }

  bool _hasMatch(String input) {
    for (int rune in input.runes) {
      if (rune < 65 || rune > 122 || (rune > 90 && rune < 97)) {
        return false;
      }
    }
    return true;
  }
}
