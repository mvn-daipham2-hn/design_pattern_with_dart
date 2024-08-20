import '../../pizza.dart';
import '../../pizza_store.dart';
import '../../pizzas/cheese_pizza.dart';
import '../../pizzas/clam_pizza.dart';
import '../../pizzas/pepperoni_pizza.dart';
import '../../pizzas/veggie_pizza.dart';
import 'chicago_pizza_ingredient_factory.dart';

class ChicagoPizzaStore extends PizzaStore {
  final ingredientFactory = ChicagoPizzaIngredientFactory();

  @override
  Pizza? createPizza(String type) {
    switch (type) {
      case "cheese":
        return CheesePizza(ingredientFactory)
          ..name = "Chicago Style Cheese Pizza";
      case "veggie":
        return VeggiePizza(ingredientFactory)
          ..name = "Chicago Style Veggie Pizza";
      case "clam":
        return ClamPizza(ingredientFactory)..name = "Chicago Style Clam Pizza";
      case "pepperoni":
        return PepperoniPizza(ingredientFactory)
          ..name = "Chicago Style Pepperoni Pizza";
    }
    return null;
  }
}
