import '../../ingredients/cheese.dart';
import '../../ingredients/clams.dart';
import '../../ingredients/dough.dart';
import '../../ingredients/pepperoni.dart';
import '../../ingredients/sauce.dart';
import '../../ingredients/veggies.dart';
import '../../pizza_ingredient_factory.dart';

class NYPizzaIngredientFactory extends PizzaIngredientFactory {
  @override
  Cheese createCheese() {
    return ReggianoCheese();
  }

  @override
  Clams createClam() {
    return FreshClams();
  }

  @override
  Dough createDough() {
    return ThinCrustDough();
  }

  @override
  Pepperoni createPepperoni() {
    return SlicedPepperoni();
  }

  @override
  Sauce createSauce() {
    return MarinaraSauce();
  }

  @override
  List<Veggies> createVeggies() {
    return [Garlic(), Onion(), Mushroom(), RedPepper()];
  }
}
