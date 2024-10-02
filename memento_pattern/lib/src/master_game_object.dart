import 'game_memento.dart';

// Wide interface: Private memento that stores the game state.
class _GameMemento implements GameMemento {
  final int _savedLevel;

  _GameMemento(this._savedLevel);

  // This method can be accessed only within this file.
  int getState() => _savedLevel;
}

/// [Originator] The class whose state needs to be saved and restored.
///
/// The Originator class, in this case, the [MasterGameObject],
/// contains the game logic and the current state of the game.
/// It can create a memento of its state and restore its state from a memento.
class MasterGameObject {
  static final MasterGameObject instance = MasterGameObject._private();
  MasterGameObject._private();

  int _currentLevel = 0;

  void setCurrentLevel(int reachedLevel) {
    _currentLevel = reachedLevel;
  }

  int getCurrentLevel() {
    return _currentLevel;
  }

  // Creates a new Memento object to store the current state.
  GameMemento createMemento() {
    return _GameMemento(_currentLevel);
  }

  // Restores the game state from a Memento object.
  void restoreState(GameMemento memento) {
    // Only MasterGameObject can access the private _GameMemento state.
    if (memento is _GameMemento) {
      _currentLevel = memento.getState();
    } else {
      throw Exception('Invalid memento type');
    }
  }
}
