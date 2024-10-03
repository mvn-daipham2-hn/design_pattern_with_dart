import 'visitor.dart';

abstract class MenuComponent {
  // We’ve grouped together the “composite” methods - that is,
  // methods to add, remove and get MenuComponents
  void add(MenuComponent menuComponent) {
    throw UnimplementedError();
  }

  void remove(MenuComponent menuComponent) {
    throw UnimplementedError();
  }

  MenuComponent getChild(int i) {
    throw UnimplementedError();
  }

  // Here are the “operation” methods; these are used by the MenuItems.
  // It turns out we can also use a couple of them in Menu too,
  // as you’ll see in a couple of pages when we show the Menu code.
  String getName() {
    throw UnimplementedError();
  }

  String getDescription() {
    throw UnimplementedError();
  }

  double getPrice() {
    throw UnimplementedError();
  }

  bool isVegetarian() {
    throw UnimplementedError();
  }

  // print() is an “operation” method that both our Menus and MenuItems will implement,
  // but we provide a default operation here.
  void printComponent() {
    throw UnimplementedError();
  }

  // We’ve added a createIterator() method to the MenuComponent.
  // This means that each Menu and MenuItem will need to implement this method.
  // It also means that calling createIterator() on a composite should apply to all children of the composite.
  Iterator createIterator() {
    throw UnimplementedError();
  }

  void accept(Visitor visitor);
}
