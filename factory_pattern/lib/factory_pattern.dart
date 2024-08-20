library factory_pattern;

export 'src/pizza_store.dart';
export 'src/regions/chicago/chicago_pizza_store.dart';
export 'src/regions/new_york/ny_pizza_store.dart';

// import 'src/pizza_store.dart';
// import 'src/regions/chicago/chicago_pizza_store.dart';
// import 'src/regions/new_york/ny_pizza_store.dart';
//
// void main() {
//   PizzaStore nyPizzaStore = NYPizzaStore();
//   PizzaStore chicagoPizzaStore = ChicagoPizzaStore();
//
//   print('Ethan, order a cheese pizza.');
//   nyPizzaStore.orderPizza('cheese');
//   print('Ethan, here\'s your pizza.\n');
//
//   print('Joel, order a cheese pizza.');
//   chicagoPizzaStore.orderPizza('cheese');
//   print('Joel, here\'s your pizza.');
// }
