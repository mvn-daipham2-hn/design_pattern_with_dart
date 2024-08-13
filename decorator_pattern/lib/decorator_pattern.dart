library decorator_pattern;

export 'src/beverages/beverage.dart';
export 'src/beverages/dark_roast.dart';
export 'src/condiments/milk.dart';

// import 'src/beverages/beverage.dart';
// import 'src/beverages/dark_roast.dart';
// import 'src/condiments/milk.dart';
//
// void main() {
//   Beverage beverage1 = DarkRoast()..size = StarbuzzSize.large;
//   beverage1 = Milk(beverage1);
//   print(
//     "${beverage1.getDescription()} \$${beverage1.cost().toStringAsFixed(2)}",
//   );
//
//   Beverage beverage2 = DarkRoast()..size = StarbuzzSize.small;
//   beverage2 = Milk(beverage2);
//   print(
//     "${beverage2.getDescription()} \$${beverage2.cost().toStringAsFixed(2)}",
//   );
// }
