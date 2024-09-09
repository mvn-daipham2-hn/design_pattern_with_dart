import '../cannot_turn_crank_exception.dart';
import '../gumball_machine.dart';
import 'state.dart';

class SoldState extends State {
  static final SoldState instance = SoldState._privateConstructor();
  SoldState._privateConstructor();

  @override
  void dispense(GumballMachine gumballMachine) {
    normalDispense(gumballMachine);
  }

  @override
  void ejectQuarter(GumballMachine gumballMachine) {
    print("Sorry, you already turned the crank");
  }

  @override
  void insertQuarter(GumballMachine gumballMachine) {
    print("Please wait, we're already giving you a gumball");
  }

  @override
  void turnCrank(GumballMachine gumballMachine) {
    print("Turning twice doesn’t get you another gumball!");
    throw CannotTurnCrankException();
  }
}
