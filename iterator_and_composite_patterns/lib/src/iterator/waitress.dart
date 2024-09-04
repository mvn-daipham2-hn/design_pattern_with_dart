import 'menu.dart';
import 'menu_item.dart';

class Waitress {
  List<Menu> menus;

  Waitress(this.menus);

  void printMenu() {
    Iterator<Menu> menuIterator = menus.iterator;
    while (menuIterator.moveNext()) {
      Menu menu = menuIterator.current;
      print("\n");
      _printMenu(menu.createIterator());
    }
  }

  void _printMenu(Iterator iterator) {
    while (iterator.moveNext()) {
      MenuItem item = iterator.current;
      print("Item: ${item.name} - ${item.price} - ${item.description}");
    }
  }

  void printBreakfastMenu() {}

  void printLunchMenu() {}

  void printVegetarianMenu() {}

  bool isItemVegetarian(String name) {
    return false;
  }
}
