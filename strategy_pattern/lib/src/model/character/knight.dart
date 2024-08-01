import 'character.dart';

class Knight extends Character {
  Knight(super.weaponBehavior) {
    print("Now, you are a Knight!");
  }

  @override
  void flight() {
    weaponBehavior.useWeapon();
  }
}
