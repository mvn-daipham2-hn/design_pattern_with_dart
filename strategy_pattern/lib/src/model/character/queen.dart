import 'character.dart';

class Queen extends Character {
  Queen(super.weaponBehavior) {
    print("Now, you are a Queen!");
  }

  @override
  void flight() {
    weaponBehavior.useWeapon();
  }
}
