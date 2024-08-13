import 'beverage.dart';

class Espresso extends Beverage {
  Espresso() {
    description = "Espresso";
  }

  @override
  double cost() {
    double mediumPrice = 1.99;
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
