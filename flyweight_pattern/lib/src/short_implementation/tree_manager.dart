import 'tree.dart';

// Context class that manages tree positions and states
class TreeManager {
  List<List<int>> treeArray = [
    [1, 2, 10], // [xCoord, yCoord, age]
    [3, 4, 5],
    [5, 6, 20],
  ];
  final Tree treeFlyweight = Tree();

  void displayTrees() {
    for (var treeInfo in treeArray) {
      treeFlyweight.display(treeInfo[0], treeInfo[1], treeInfo[2]);
    }
  }
}
