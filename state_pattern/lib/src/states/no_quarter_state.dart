import '../cannot_turn_crank_exception.dart';
import '../gumball_machine.dart';
import 'has_quarter_state.dart';
import 'state.dart';

class NoQuarterState extends State {
  static final NoQuarterState instance = NoQuarterState._privateConstructor();
  NoQuarterState._privateConstructor();

  @override
  void dispense(GumballMachine gumballMachine) {
    print("You need to pay first");
  }

  @override
  void ejectQuarter(GumballMachine gumballMachine) {
    print("You haven’t inserted a quarter");
  }

  @override
  void insertQuarter(GumballMachine gumballMachine) {
    print("You inserted a quarter");
    gumballMachine.setState(HasQuarterState.instance);
  }

  @override
  void turnCrank(GumballMachine gumballMachine) {
    print("You turned, but there’s no quarter");
    throw CannotTurnCrankException();
  }
}
