import 'character.dart';

class King extends Character {
  King(super.weaponBehavior) {
    print("Now, you are a King!");
  }

  @override
  void flight() {
    weaponBehavior.useWeapon();
  }
}
