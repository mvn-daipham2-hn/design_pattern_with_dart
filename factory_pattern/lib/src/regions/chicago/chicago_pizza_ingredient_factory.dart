import '../../ingredients/cheese.dart';
import '../../ingredients/clams.dart';
import '../../ingredients/dough.dart';
import '../../ingredients/pepperoni.dart';
import '../../ingredients/sauce.dart';
import '../../ingredients/veggies.dart';
import '../../pizza_ingredient_factory.dart';

class ChicagoPizzaIngredientFactory extends PizzaIngredientFactory {
  @override
  Cheese createCheese() {
    return MozzarellaCheese();
  }

  @override
  Clams createClam() {
    return FrozenClams();
  }

  @override
  Dough createDough() {
    return ThickCrustDough();
  }

  @override
  Pepperoni createPepperoni() {
    return SlicedPepperoni();
  }

  @override
  Sauce createSauce() {
    return PlumTomatoSauce();
  }

  @override
  List<Veggies> createVeggies() {
    return [Mushroom(), RedPepper()];
  }
}
