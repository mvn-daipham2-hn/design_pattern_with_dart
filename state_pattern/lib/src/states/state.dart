import '../gumball_machine.dart';
import 'no_quarter_state.dart';
import 'sold_out_state.dart';

abstract class State {
  void insertQuarter(GumballMachine gumballMachine);

  void ejectQuarter(GumballMachine gumballMachine);

  void turnCrank(GumballMachine gumballMachine);

  void dispense(GumballMachine gumballMachine);

  void normalDispense(GumballMachine gumballMachine) {
    gumballMachine.releaseBall();
    if (gumballMachine.getCount() > 0) {
      gumballMachine.setState(NoQuarterState.instance);
    } else {
      print("Oops, out of gumballs!");
      gumballMachine.setState(SoldOutState.instance);
    }
  }
}
