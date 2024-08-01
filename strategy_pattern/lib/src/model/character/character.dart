import '../../behavior/weapon/weapon_behavior.dart';

abstract class Character {
  WeaponBehavior weaponBehavior;

  Character(this.weaponBehavior);

  void flight();

  void switchWeapon(WeaponBehavior newWeaponBehavior) {
    print('Switching new weapon...');
    weaponBehavior = newWeaponBehavior;
  }
}
