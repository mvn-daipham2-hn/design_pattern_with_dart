import 'character.dart';

class Warrior extends Character {
  Warrior(super.weaponBehavior) {
    print("Now, you are a warrior");
  }

  @override
  void flight() {
    weaponBehavior.useWeapon();
  }
}
