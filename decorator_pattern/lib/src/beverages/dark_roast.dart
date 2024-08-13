import 'beverage.dart';

class DarkRoast extends Beverage {
  DarkRoast() {
    description = "Most Excellent Dark Roast";
  }

  @override
  double cost() {
    double mediumPrice = 0.99;
    double fluctuate = mediumPrice * 0.3;
    switch (size) {
      case StarbuzzSize.small:
        return mediumPrice - fluctuate;
      case StarbuzzSize.large:
        return mediumPrice + fluctuate;
      case StarbuzzSize.medium:
        return mediumPrice;
    }
  }
}
