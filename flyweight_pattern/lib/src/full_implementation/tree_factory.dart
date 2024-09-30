import 'tree.dart';
import 'tree_impl.dart';

// FlyweightFactory to manage the flyweight pool
class TreeFactory {
  final Map<int, Tree> _trees = {};

  Tree getTree(int age) {
    if (_trees.containsKey(age)) {
      return _trees[age]!;
    } else {
      Tree tree = TreeImpl(age);
      _trees[age] = tree;
      return tree;
    }
  }
}
