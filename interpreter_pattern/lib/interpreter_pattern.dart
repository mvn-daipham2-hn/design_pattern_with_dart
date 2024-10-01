library interpreter_pattern;

import 'src/expression.dart';
import 'src/sequence.dart';

// Grammar Rule:
// expression ::= <command> | <sequence> | <repetition>
// sequence ::= <expression> ‘;’ <expression>
// command ::= right | quack | fly
// repetition ::= while ‘(‘ <variable> ‘)’<expresion>
// variable ::= [A-Z,a-z]+

void main() {
  String input =
      'right;while (daylight) fly;quack;while(fullBattery) quack;fly;while(123) right;';
  Expression sequence = Sequence();
  sequence.interpret(input);
}
