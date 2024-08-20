import 'ingredients/cheese.dart';
import 'ingredients/clams.dart';
import 'ingredients/dough.dart';
import 'ingredients/pepperoni.dart';
import 'ingredients/sauce.dart';
import 'ingredients/veggies.dart';

abstract class Pizza {
  String name = "pizza";
  Dough? dough;
  Sauce? sauce;
  List<Veggies>? veggies;
  Cheese? cheese;
  Pepperoni? pepperoni;
  Clams? clam;

  void prepare();

  void bake() {
    print("Bake for 25 minutes at 350");
  }

  void cut() {
    print("Cutting the pizza into diagonal slices");
  }

  void box() {
    print("Place pizza in official PizzaStore box");
  }
}
