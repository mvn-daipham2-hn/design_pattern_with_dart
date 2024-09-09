import '../cannot_turn_crank_exception.dart';
import '../gumball_machine.dart';
import 'sold_out_state.dart';
import 'state.dart';

class WinnerState extends State {
  static final WinnerState instance = WinnerState._privateConstructor();
  WinnerState._privateConstructor();

  @override
  void dispense(GumballMachine gumballMachine) {
    print("YOU’RE A WINNER! You get two gumballs for your quarter");
    gumballMachine.releaseBall();
    if (gumballMachine.getCount() == 0) {
      gumballMachine.setState(SoldOutState.instance);
    } else {
      normalDispense(gumballMachine);
    }
  }

  @override
  void ejectQuarter(GumballMachine gumballMachine) {
    print("Sorry, you already turned the crank");
  }

  @override
  void insertQuarter(GumballMachine gumballMachine) {
    print("Please wait, we're already giving you the gumball");
  }

  @override
  void turnCrank(GumballMachine gumballMachine) {
    print("Turning twice doesn’t get you another gumball!");
    throw CannotTurnCrankException();
  }
}
