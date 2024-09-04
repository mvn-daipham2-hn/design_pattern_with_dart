library iterator_and_composite_patterns;

import 'src/composite/menu.dart';
import 'src/composite/menu_component.dart';
import 'src/composite/menu_item.dart';
import 'src/composite/waitress.dart';

void main() {
  MenuComponent pancakeHouseMenu = Menu("PANCAKE HOUSE MENU", "Breakfast");
  MenuComponent dinerMenu = Menu("DINER MENU", "Lunch");
  MenuComponent cafeMenu = Menu("CAFE MENU", "Dinner");
  MenuComponent dessertMenu = Menu("DESSERT MENU", "Dessert of course!");

  MenuComponent allMenus = Menu("ALL MENUS", "All menus combined");

  allMenus.add(pancakeHouseMenu);
  allMenus.add(dinerMenu);
  allMenus.add(cafeMenu);

  dinerMenu.add(
    MenuItem(
      "Pasta",
      "Spaghetti with Marinara Sauce, and a slice of sourdough bread",
      true,
      3.89,
    ),
  );

  dinerMenu.add(dessertMenu);

  dessertMenu.add(
    MenuItem(
      "Apple Pie",
      "Apple pie with a flakey crust, topped with vanilla icecream",
      true,
      1.59,
    ),
  );

  Waitress waitress = Waitress(allMenus);

  waitress.printVegetarianMenu();
}
