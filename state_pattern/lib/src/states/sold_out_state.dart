import '../cannot_turn_crank_exception.dart';
import '../gumball_machine.dart';
import 'state.dart';

class SoldOutState extends State {
  static final SoldOutState instance = SoldOutState._privateConstructor();
  SoldOutState._privateConstructor();

  @override
  void dispense(GumballMachine gumballMachine) {
    print("No gumball dispensed");
  }

  @override
  void ejectQuarter(GumballMachine gumballMachine) {
    print("You can’t eject, you haven’t inserted a quarter yet");
  }

  @override
  void insertQuarter(GumballMachine gumballMachine) {
    print("You can’t insert a quarter, the machine is sold out");
  }

  @override
  void turnCrank(GumballMachine gumballMachine) {
    print("You turned, but there are no gumballs");
    throw CannotTurnCrankException();
  }
}
