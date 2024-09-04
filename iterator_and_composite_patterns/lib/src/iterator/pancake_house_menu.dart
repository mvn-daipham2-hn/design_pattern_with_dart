import 'menu.dart';
import 'menu_item.dart';

class PancakeHouseMenu implements Menu {
  List menuItems = [];

  PancakeHouseMenu() {
    addItem(
      "K&B’s Pancake Breakfast",
      "Pancakes with scrambled eggs, and toast",
      true,
      2.99,
    );

    addItem(
      "Regular Pancake Breakfast",
      "Pancakes with fried eggs, sausage",
      false,
      2.99,
    );

    addItem(
      "Blueberry Pancakes",
      "Pancakes made with fresh blueberries",
      true,
      3.49,
    );

    addItem(
      "Waffles",
      "Waffles, with your choice of blueberries or strawberries",
      true,
      3.59,
    );
  }

  void addItem(
    String name,
    String description,
    bool vegetarian,
    double price,
  ) {
    MenuItem menuItem = MenuItem(name, description, vegetarian, price);
    menuItems.add(menuItem);
  }

  @override
  Iterator createIterator() => menuItems.iterator;
}
