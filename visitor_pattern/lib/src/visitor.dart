import 'menu.dart';
import 'menu_item.dart';

class Visitor {
  double _avgHealthRating = 0;
  double _totalCalories = 0;
  double _totalProtein = 0;
  double _totalCards = 0;

  void visitMenu(Menu menu) {
    //
  }

  void visitMenuItem(MenuItem menuItem) {
    double? healthRating = menuItem.nutrition.healthRating;
    if (healthRating != null) {
      if (_avgHealthRating == 0) {
        _avgHealthRating = healthRating;
      } else {
        _avgHealthRating = (_avgHealthRating + healthRating) / 2;
      }
    }
    _totalCalories += menuItem.nutrition.calories;
    _totalProtein += menuItem.nutrition.protein;
    _totalCards += menuItem.nutrition.carbs;
  }

  double getHealthRating() {
    return _avgHealthRating;
  }

  double getCalories() {
    return _totalCalories;
  }

  double getProtein() {
    return _totalProtein;
  }

  double getCarbs() {
    return _totalCards;
  }
}
