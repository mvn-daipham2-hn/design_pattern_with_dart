# Factory Pattern(editing...)

## Problem-solving: 
The Factory Method Pattern defines an interface for creating an object
but lets subclasses decide which class to instantiate. Factory Method lets a class defer instantiation to subclasses.

## UML diagram: 
> **Factory Method Pattern**
![Screenshot 2024-08-14 at 16 44 46](https://github.com/user-attachments/assets/65e5d4fc-63f3-41c3-af1d-c981e71d9ad7)

> **Apply to PizzaStore**
![Screenshot 2024-08-14 at 16 15 18](https://github.com/user-attachments/assets/04ca85aa-e453-40bf-abda-f1c27a0df5ed)

## Design Principles:

## Noted Points:
1. In design patterns, the phrase “implement an interface” does NOT always mean “write a class implements an interface,
by using the “implements” keyword in the class declaration.” In the general use of the phrase,
a concrete class implementing a method from a supertype (which could be a class OR interface) is still considered to be “implementing the interface” of that supertype.

## More about Simple Factory:
The Simple Factory isn’t actually a Design Pattern; it’s more of a programming idiom(but it is commonly used).

Some developers do mistake this idiom for the "Factory Pattern".

As you can see in the diagram, we will separate the creation object part from `PizzaStore` into another class `SimplePizaFactory`.
Why do we do that? Maybe we will reuse this factory class for other places, not only `PizzaStore`

![Screenshot 2024-08-14 at 17 03 55](https://github.com/user-attachments/assets/cfdd3a85-f43b-40ea-94e0-8bf59d367b8a)
