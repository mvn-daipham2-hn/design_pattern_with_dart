import 'tree.dart';

// ConcreteFlyweight implementing Flyweight, with intrinsic state
class TreeImpl implements Tree {
  int age; // Intrinsic state

  TreeImpl(this.age);

  @override
  void display(int xCoord, int yCoord) {
    print('Drawing tree at ($xCoord, $yCoord) with age $age');
  }
}
