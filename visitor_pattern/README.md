# Visitor Pattern
## Problem-solving:
Use the Visitor Pattern when you want to add capabilities to a composite of objects and encapsulation is not important.

## UML diagram:
![Screenshot 2024-10-03 at 15 32 12](https://github.com/user-attachments/assets/034af171-ce60-40ce-b444-961d27bbc56a)

• **_Visitor_**
- declares a Visit operation for each class of ConcreteElement in the object structure.
The operation's name and signature identifies the class that sends the Visit request to the visitor.
That lets the visitor determine the concrete class of the element being visited.
Then the visitor can access the element directly through its particular interface.

• **_Concrete Visitor_**
- implements each operation declared by Visitor.
Each operation implements a fragment of the algorithm defined for the corresponding class of object in the structure.
ConcreteVisitor provides the context for the algorithm and stores its local state.
This state often accumulates results during the traversal of the structure.

• **_Element_**
- defines an Accept operation that takes a visitor as an argument.

• **_ConcreteElement_**
- implements an Accept operation that takes a visitor as an argument.

• **_ObjectStructure_**
- can enumerate its elements.
- may provide a high-level interface to allow the visitor to visit its elements.
- may either be a composite or a collection such as a list or a set.


## Benefits:
- Allows you to add operations to a Composite structure without changing the structure itself.

- Adding new operations is relatively easy.

- The code for operations performed by the Visitor is centralized.

## Uses and Drawback:
- The Composite classes’ encapsulation is broken when the Visitor is used.

- Because the traversal function is involved, changes to the Composite structure are more difficult.
