import '../../pizza.dart';
import '../../pizza_store.dart';
import '../../pizzas/cheese_pizza.dart';
import '../../pizzas/clam_pizza.dart';
import '../../pizzas/pepperoni_pizza.dart';
import '../../pizzas/veggie_pizza.dart';
import 'california_pizza_ingredient_factory.dart';

class CaliforniaPizzaStore extends PizzaStore {
  final ingredientFactory = CaliforniaPizzaIngredientFactory();

  @override
  Pizza? createPizza(String type) {
    switch (type) {
      case "cheese":
        return CheesePizza(ingredientFactory)
          ..name = "California Style Cheese Pizza";
      case "veggie":
        return VeggiePizza(ingredientFactory)
          ..name = "California Style Veggie Pizza";
      case "clam":
        return ClamPizza(ingredientFactory)
          ..name = "California Style Clam Pizza";
      case "pepperoni":
        return PepperoniPizza(ingredientFactory)
          ..name = "California Style Pepperoni Pizza";
    }
    return null;
  }
}
