library state_pattern;

import 'src/gumball_machine.dart';

void main() {
  GumballMachine gumballMachine = GumballMachine(5, code: "001");
  print(gumballMachine);

  gumballMachine.insertQuarter();
  gumballMachine.turnCrank();
  print(gumballMachine);
  gumballMachine.insertQuarter();
  gumballMachine.turnCrank();
  print(gumballMachine);
  gumballMachine.insertQuarter();
  gumballMachine.turnCrank();
  print(gumballMachine);
  gumballMachine.insertQuarter();
  gumballMachine.turnCrank();
  print(gumballMachine);
  gumballMachine.insertQuarter();
  gumballMachine.turnCrank();
  print(gumballMachine);

  gumballMachine.refill(10);
  print(gumballMachine);

  GumballMachine gumballMachine2 = GumballMachine(5, code: "002");
  print(gumballMachine2);

  gumballMachine2.insertQuarter();
  gumballMachine2.turnCrank();
  print(gumballMachine2);
}
