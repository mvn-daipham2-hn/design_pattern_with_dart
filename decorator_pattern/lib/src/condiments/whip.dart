import '../beverages/beverage.dart';
import 'condiment_decorator.dart';

class Whip implements CondimentDecorator {
  Beverage beverage;

  Whip(this.beverage);

  @override
  String description = ", Whip";

  @override
  StarbuzzSize size = StarbuzzSize.medium;

  @override
  double cost() {
    double cost = beverage.cost();
    switch (getSize()) {
      case StarbuzzSize.small:
        return cost += .10;
      case StarbuzzSize.medium:
        return cost += .15;
      case StarbuzzSize.large:
        return cost += .20;
    }
  }

  @override
  String getDescription() {
    return beverage.getDescription() + description;
  }

  @override
  StarbuzzSize getSize() {
    return beverage.getSize();
  }
}
