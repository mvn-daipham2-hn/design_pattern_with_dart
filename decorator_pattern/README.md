# Decorator Pattern
## Problem-solving:
The Decorator Pattern attaches additional responsibilities to an object dynamically. Decorators provide a flexible alternative to subclassing for extending functionality.
## UML diagram: 
![Screenshot 2024-08-05 at 17 01 14](https://github.com/user-attachments/assets/317b451e-ed23-4b4b-a1ac-b9ccb03cab7f)
## Design Principle
> Open-Closed principle(Classes should be open for extension, but closed for modification)

Following the Open-Closed Principle usually introduces new levels of abstraction, which adds complexity to our code.
You want to concentrate on those areas that are most likely to change in your designs and apply the principles there.

Be careful when choosing the areas of code that need to be extended; applying the
Open-Closed Principle EVERYWHERE is wasteful, and unnecessary, and can lead to complex, hard-to-understand code.
## Bullet Points:
1. Provides an alternative to subclassing for extending behavior
2. Involves a set of decorator classes that are used to wrap concrete components.
3. Decorator classes mirror the type of components they decorate. (In fact, they are the same type as the components they decorate, either through inheritance or interface implementation.)
4. Decorators change the behavior of their components by adding new functionality before and/or after (or even in place of) method calls to the component.
5. Can wrap a component with any number of decorators.
6. Decorators are typically transparent to the client of the component; that is unless the client is relying on the component’s concrete type



