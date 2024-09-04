import 'menu_component.dart';

class Waitress {
  MenuComponent allMenus;

  Waitress(this.allMenus);

  void printMenu() {
    allMenus.printComponent();
  }

  void printVegetarianMenu() {
    Iterator iterator = allMenus.createIterator();
    print("\nVEGETARIAN MENU\n----\n");
    while (iterator.moveNext()) {
      MenuComponent menuComponent = iterator.current;
      // In general we agree; try/catch is meant for error handling, not program logic.
      // What are our other options?
      // We could have checked the runtime type of the menu component with 'is' to make sure it’s a MenuItem
      // before making the call to isVegetarian().
      // But in the process we’d lose transparency because we wouldn’t be treating Menus and MenuItems uniformly.
      try {
        if (menuComponent.isVegetarian()) {
          menuComponent.printComponent();
        }
      } on UnsupportedError {}
    }
  }
}
