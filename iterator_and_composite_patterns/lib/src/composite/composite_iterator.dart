import 'menu.dart';
import 'menu_component.dart';

class CompositeIterator extends Iterator<MenuComponent> {
  Iterator<MenuComponent> iterator;
  Stack<Iterator<MenuComponent>> stack = Stack<Iterator<MenuComponent>>();

  CompositeIterator(this.iterator) {
    stack.push(iterator);
  }

  @override
  MenuComponent get current {
    return iterator.current;
  }

  @override
  bool moveNext() {
    if (stack.isEmpty) {
      return false;
    } else {
      Iterator<MenuComponent>? top = stack.peek();
      if (top == null) {
        return false;
      } else {
        iterator = top;
      }

      if (!iterator.moveNext()) {
        stack.pop();
        return moveNext();
      } else {
        MenuComponent component = iterator.current;
        if (component is Menu) {
          stack.push(component.createIterator());
        }
        return true;
      }
    }
  }
}

class Stack<E> {
  final _stack = <E>[];

  void push(E element) {
    _stack.add(element);
  }

  E pop() {
    return _stack.removeLast();
  }

  E? peek() {
    return isEmpty ? null : _stack.last;
  }

  bool get isEmpty => _stack.isEmpty;
}
