import 'pizza.dart';

abstract class PizzaStore {
  Pizza orderPizza(String type) {
    final pizza = createPizza(type);
    if (pizza == null) {
      throw Exception("Error! We cannot create a pizza for you with $type");
    }
    pizza.prepare();
    pizza.bake();
    pizza.cut();
    pizza.box();
    return pizza;
  }

  /// This is [Factory Method]
  ///
  /// All the responsibility for instantiating Pizzas has been moved into a method that acts as a factory.
  Pizza? createPizza(String type);
}
