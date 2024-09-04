import 'menu_component.dart';
import 'null_iterator.dart';

class MenuItem extends MenuComponent {
  String name;
  String description;
  bool vegetarian;
  double price;

  MenuItem(
    this.name,
    this.description,
    this.vegetarian,
    this.price,
  );

  @override
  String getName() {
    return name;
  }

  @override
  String getDescription() {
    return description;
  }

  @override
  double getPrice() {
    return price;
  }

  @override
  bool isVegetarian() {
    return vegetarian;
  }

  @override
  void printComponent() {
    print(
      "\t${getName()}${isVegetarian() ? "(v)" : ""}, ${getPrice()} -- ${getDescription()}",
    );
  }

  @override
  Iterator createIterator() {
    return NullIterator();
  }
}
