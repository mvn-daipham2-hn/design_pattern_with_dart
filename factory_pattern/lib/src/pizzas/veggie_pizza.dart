import '../pizza.dart';
import '../pizza_ingredient_factory.dart';

class VeggiePizza extends Pizza {
  PizzaIngredientFactory ingredientFactory;

  VeggiePizza(this.ingredientFactory);

  @override
  void prepare() {
    print("Preparing $name");
    dough = ingredientFactory.createDough();
    sauce = ingredientFactory.createSauce();
    veggies = ingredientFactory.createVeggies();
  }
}
