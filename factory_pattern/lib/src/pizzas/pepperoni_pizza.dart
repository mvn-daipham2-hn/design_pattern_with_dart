import '../pizza.dart';
import '../pizza_ingredient_factory.dart';

class PepperoniPizza extends Pizza {
  PizzaIngredientFactory ingredientFactory;

  PepperoniPizza(this.ingredientFactory);

  @override
  void prepare() {
    print("Preparing $name");
    dough = ingredientFactory.createDough();
    sauce = ingredientFactory.createSauce();
    pepperoni = ingredientFactory.createPepperoni();
  }
}
