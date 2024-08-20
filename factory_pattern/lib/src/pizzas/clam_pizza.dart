import '../pizza.dart';
import '../pizza_ingredient_factory.dart';

class ClamPizza extends Pizza {
  PizzaIngredientFactory ingredientFactory;

  ClamPizza(this.ingredientFactory);

  @override
  void prepare() {
    print("Preparing $name");
    dough = ingredientFactory.createDough();
    sauce = ingredientFactory.createSauce();
    cheese = ingredientFactory.createCheese();
    clam = ingredientFactory.createClam();
  }
}
