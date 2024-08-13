import '../beverages/beverage.dart';

abstract class CondimentDecorator extends Beverage {
  @override
  String getDescription();
}
