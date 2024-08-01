import 'character.dart';

class Troll extends Character {
  Troll(super.weaponBehavior) {
    print("Now, you are a Troll!");
  }

  @override
  void flight() {
    weaponBehavior.useWeapon();
  }
}
