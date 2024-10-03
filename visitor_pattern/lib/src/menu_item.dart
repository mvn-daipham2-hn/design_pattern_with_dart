import 'menu_component.dart';
import 'null_iterator.dart';
import 'visitor.dart';

class Nutrition {
  double? healthRating;
  double calories;
  double protein;
  double carbs;

  Nutrition(this.healthRating, this.calories, this.protein, this.carbs);
}

class MenuItem extends MenuComponent {
  String name;
  String description;
  bool vegetarian;
  double price;
  Nutrition nutrition;

  MenuItem(
    this.name,
    this.description,
    this.vegetarian,
    this.price,
    this.nutrition,
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

  @override
  void accept(Visitor visitor) {
    visitor.visitMenuItem(this);
  }
}
