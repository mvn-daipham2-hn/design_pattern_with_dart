import '../../ingredients/cheese.dart';
import '../../ingredients/clams.dart';
import '../../ingredients/dough.dart';
import '../../ingredients/pepperoni.dart';
import '../../ingredients/sauce.dart';
import '../../ingredients/veggies.dart';
import '../../pizza_ingredient_factory.dart';

class CaliforniaPizzaIngredientFactory extends PizzaIngredientFactory {
  @override
  Cheese createCheese() {
    return GoatCheese();
  }

  @override
  Clams createClam() {
    return Calamari();
  }

  @override
  Dough createDough() {
    return VeryThinCrust();
  }

  @override
  Pepperoni createPepperoni() {
    return SlicedPepperoni();
  }

  @override
  Sauce createSauce() {
    return BruschettaSauce();
  }

  @override
  List<Veggies> createVeggies() {
    return [Mushroom(), RedPepper()];
  }
}
