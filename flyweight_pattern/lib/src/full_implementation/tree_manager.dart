// Client class managing the extrinsic state and using Flyweight objects
import 'tree.dart';
import 'tree_factory.dart';

// Client class managing the extrinsic state and using Flyweight objects
class TreeManager {
  final TreeFactory _treeFactory = TreeFactory();
  List<List<int>> treeArray = [
    [1, 2, 10], // [xCoord, yCoord, age]
    [3, 4, 5],
    [5, 6, 20],
  ];

  void displayTrees() {
    for (var treeInfo in treeArray) {
      Tree tree = _treeFactory.getTree(treeInfo[2]);
      tree.display(treeInfo[0], treeInfo[1]);
    }
  }
}
