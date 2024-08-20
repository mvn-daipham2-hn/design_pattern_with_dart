import '../../pizza.dart';
import '../../pizza_store.dart';
import '../../pizzas/cheese_pizza.dart';
import '../../pizzas/clam_pizza.dart';
import '../../pizzas/pepperoni_pizza.dart';
import '../../pizzas/veggie_pizza.dart';
import 'ny_pizza_ingredient_factory.dart';

class NYPizzaStore extends PizzaStore {
  final ingredientFactory = NYPizzaIngredientFactory();

  @override
  Pizza? createPizza(String type) {
    switch (type) {
      case "cheese":
        return CheesePizza(ingredientFactory)
          ..name = "New York Style Cheese Pizza";
      case "veggie":
        return VeggiePizza(ingredientFactory)
          ..name = "New York Style Veggie Pizza";
      case "clam":
        return ClamPizza(ingredientFactory)..name = "New York Style Clam Pizza";
      case "pepperoni":
        return PepperoniPizza(ingredientFactory)
          ..name = "New York Style Pepperoni Pizza";
    }
    return null;
  }
}
