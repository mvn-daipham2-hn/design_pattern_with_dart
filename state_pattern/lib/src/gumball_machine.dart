import 'cannot_turn_crank_exception.dart';
import 'states/has_quarter_state.dart';
import 'states/no_quarter_state.dart';
import 'states/sold_out_state.dart';
import 'states/state.dart';

class GumballMachine {
  String _code = "2024";

  State _state = SoldOutState.instance;
  int _count = 0;

  GumballMachine(
    int numberGumballs, {
    required String code,
  }) {
    _code = code;
    _count = numberGumballs;
    if (numberGumballs > 0) {
      _state = NoQuarterState.instance;
    }
  }

  void insertQuarter() {
    _state.insertQuarter(this);
  }

  void ejectQuarter() {
    _state.ejectQuarter(this);
  }

  void turnCrank() {
    try {
      _state.turnCrank(this);
      _state.dispense(this);
    } on CannotTurnCrankException {
      // ignore
    }
  }

  void refill(int numberGumballs) {
    _count = numberGumballs;
    if (numberGumballs > 0) {
      _state = NoQuarterState.instance;
    }
  }

  void setState(State state) {
    _state = state;
  }

  void releaseBall() {
    print("A gumball comes rolling out the slot...");
    if (_count != 0) {
      _count = _count - 1;
    }
  }

  State getState() => _state;

  int getCount() => _count;

  @override
  String toString() {
    return '''\n
Mighty Gumball, Inc.
Dart-enabled Standing Gumball Model #$_code
Inventory: $_count gumballs
${_state == SoldOutState.instance ? "Machine is sold out" : _state == NoQuarterState.instance ? "Machine is waiting for quarter" : _state == HasQuarterState.instance ? "Machine is ready to sell" : _state == SoldOutState.instance ? "Machine has just bought a gumball" : ""}
    \n''';
  }
}
