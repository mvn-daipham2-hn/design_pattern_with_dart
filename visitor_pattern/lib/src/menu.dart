import 'composite_iterator.dart';
import 'menu_component.dart';
import 'visitor.dart';

class Menu extends MenuComponent {
  List<MenuComponent> menuComponents = [];
  String name;
  String description;
  Iterator<MenuComponent>? iterator;

  Menu(this.name, this.description);

  @override
  void add(MenuComponent menuComponent) {
    menuComponents.add(menuComponent);
  }

  @override
  void remove(MenuComponent menuComponent) {
    menuComponents.remove(menuComponent);
  }

  @override
  MenuComponent getChild(int i) {
    return menuComponents[i];
  }

  @override
  String getName() {
    return name;
  }

  @override
  String getDescription() {
    return description;
  }

  @override
  void printComponent() {
    print("\n ${getName()}, ${getDescription()}\n --------------------- \n");
    Iterator iterator = menuComponents.iterator;
    while (iterator.moveNext()) {
      MenuComponent menuComponent = iterator.current;
      menuComponent.printComponent();
    }
  }

  @override
  Iterator<MenuComponent> createIterator() {
    iterator ??= CompositeIterator(menuComponents.iterator);
    return iterator!;
  }

  @override
  void accept(Visitor visitor) {
    Iterator<MenuComponent> iterator = menuComponents.iterator;
    while (iterator.moveNext()) {
      iterator.current.accept(visitor);
    }
    visitor.visitMenu(this);
  }
}
