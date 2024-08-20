import 'ingredients/cheese.dart';
import 'ingredients/clams.dart';
import 'ingredients/dough.dart';
import 'ingredients/pepperoni.dart';
import 'ingredients/sauce.dart';
import 'ingredients/veggies.dart';

/// This is [Abstract Factory]
abstract class PizzaIngredientFactory {
  Dough createDough();
  Sauce createSauce();
  Cheese createCheese();
  List<Veggies> createVeggies();
  Pepperoni createPepperoni();
  Clams createClam();
}
