import '../../behavior/weapon/weapon_behavior.dart';

abstract class Character {
  WeaponBehavior weaponBehavior;

  Character(this.weaponBehavior);

  void flight();

  void setWeapon(WeaponBehavior newWeaponBehavior) {
    print('Switching new weapon...');
    weaponBehavior = newWeaponBehavior;
  }
}
