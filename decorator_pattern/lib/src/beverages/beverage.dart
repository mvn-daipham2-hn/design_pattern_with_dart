abstract class Beverage {
  String description = "";
  StarbuzzSize size = StarbuzzSize.medium;

  String getDescription() {
    return description;
  }

  StarbuzzSize getSize() {
    return size;
  }

  double cost();
}

enum StarbuzzSize {
  small,
  medium,
  large,
}
