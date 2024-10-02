library memento_pattern;

import 'src/caretaker.dart';
import 'src/master_game_object.dart';

void main() {
  MasterGameObject game = MasterGameObject.instance;
  Caretaker caretaker = Caretaker();

  // Player reaches level 12
  game.setCurrentLevel(12);
  print('Current Game State: ${game.getCurrentLevel()}');

  // Save the game state in a memento.
  caretaker.saveMemento(game.createMemento());

  game.setCurrentLevel(13);
  print('Current Game State: ${game.getCurrentLevel()}');

  // Something goes wrong, and we want to restore the saved state.
  if (caretaker.getMemento() != null) {
    print("Something goes wrong, and we want to restore the saved state...");
    game.restoreState(caretaker.getMemento()!);
    print('Game State Restored: ${game.getCurrentLevel()}');
  }
}
