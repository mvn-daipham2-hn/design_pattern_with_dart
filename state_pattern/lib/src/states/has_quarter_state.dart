import 'dart:math';

import '../gumball_machine.dart';
import 'no_quarter_state.dart';
import 'sold_state.dart';
import 'state.dart';
import 'winner_state.dart';

class HasQuarterState extends State {
  static final HasQuarterState instance = HasQuarterState._privateConstructor();
  HasQuarterState._privateConstructor();

  Random randomWinner = Random(DateTime.now().millisecondsSinceEpoch);

  @override
  void dispense(GumballMachine gumballMachine) {
    print("No gumball dispensed");
  }

  @override
  void ejectQuarter(GumballMachine gumballMachine) {
    print("Quarter returned");
    gumballMachine.setState(NoQuarterState.instance);
  }

  @override
  void insertQuarter(GumballMachine gumballMachine) {
    print("You can’t insert another quarter");
  }

  @override
  void turnCrank(GumballMachine gumballMachine) {
    print("You turned...");
    int winner = randomWinner.nextInt(10);
    if ((winner == 0) && (gumballMachine.getCount() > 1)) {
      gumballMachine.setState(WinnerState.instance);
    } else {
      gumballMachine.setState(SoldState.instance);
    }
  }
}
