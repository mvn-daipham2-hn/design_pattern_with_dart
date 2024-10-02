import 'game_memento.dart';

/// The [Caretaker] will be responsible for holding the Memento,
/// but without modifying the memento's state.
class Caretaker {
  GameMemento? _memento;

  // Save the current memento
  void saveMemento(GameMemento memento) {
    _memento = memento;
  }

  // Retrieve the saved memento
  GameMemento? getMemento() {
    return _memento;
  }
}
