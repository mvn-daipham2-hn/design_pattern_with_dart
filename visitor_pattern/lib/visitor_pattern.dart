library visitor_pattern;

import 'src/menu.dart';
import 'src/menu_component.dart';
import 'src/menu_item.dart';
import 'src/visitor.dart';

void main() {
  MenuComponent pancakeHouseMenu = Menu("PANCAKE HOUSE MENU", "Breakfast");
  MenuComponent dinerMenu = Menu("DINER MENU", "Lunch");
  MenuComponent cafeMenu = Menu("CAFE MENU", "Dinner");
  MenuComponent dessertMenu = Menu("DESSERT MENU", "Dessert of course!");

  MenuComponent allMenus = Menu("ALL MENUS", "All menus combined");

  allMenus.add(pancakeHouseMenu);
  allMenus.add(dinerMenu);
  allMenus.add(cafeMenu);

  cafeMenu.add(
    MenuItem(
      "Coffee Milk",
      "Black coffee with with white cream",
      true,
      1.56,
      Nutrition(4, 150.3, 0, 0),
    ),
  );

  dinerMenu.add(
    MenuItem(
      "Pasta",
      "Spaghetti with Marinara Sauce, and a slice of sourdough bread",
      true,
      3.89,
      Nutrition(5, 1200, 45.3, 150),
    ),
  );

  dinerMenu.add(
    MenuItem(
      "Fried Rice",
      "Fried rice with tomato and potato, a normal for everyone.",
      true,
      2.45,
      Nutrition(4.9, 1000, 30, 300.5),
    ),
  );

  dinerMenu.add(dessertMenu);

  dessertMenu.add(
    MenuItem(
      "Apple Pie",
      "Apple pie with a flakey crust, topped with vanilla ice cream",
      true,
      1.59,
      Nutrition(4.5, 145.5, 0, 0),
    ),
  );

  Visitor visitor = Visitor();
  dinerMenu.accept(visitor);

  print("Nutrition detail of `DINER MENU`:");
  print("Rating: ${visitor.getHealthRating()}");
  print("Calories: ${visitor.getCalories()}");
  print("Protein: ${visitor.getProtein()}");
  print("Carbs: ${visitor.getCarbs()}");
}
