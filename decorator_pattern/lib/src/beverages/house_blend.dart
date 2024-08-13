import 'beverage.dart';

class HouseBlend extends Beverage {
  HouseBlend() {
    description = "House Blend Coffee";
  }

  @override
  double cost() {
    double mediumPrice = 0.89;
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
