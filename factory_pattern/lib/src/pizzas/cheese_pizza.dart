import '../pizza.dart';
import '../pizza_ingredient_factory.dart';

class CheesePizza extends Pizza {
  PizzaIngredientFactory ingredientFactory;

  CheesePizza(this.ingredientFactory);

  @override
  void prepare() {
    print("Preparing $name");
    dough = ingredientFactory.createDough();
    sauce = ingredientFactory.createSauce();
    cheese = ingredientFactory.createCheese();
  }
}
