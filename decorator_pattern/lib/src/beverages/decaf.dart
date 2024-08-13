import 'beverage.dart';

class Decaf extends Beverage {
  Decaf() {
    description = "Decaf Coffee";
  }

  @override
  double cost() {
    double mediumPrice = 1.05;
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
