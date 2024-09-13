# Strategy Pattern

## Problem-solving:
The Strategy Pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable. Strategy lets the algorithm vary independently from clients that use it.

## UML diagram: 
<img width="934" alt="Screenshot 2024-09-13 at 14 16 05" src="https://github.com/user-attachments/assets/a39a2465-c1ff-4d62-b5e0-d497ca1effdb">


## Design Principles:
> Identify the aspects of your application that vary and separate them from what stays the same.

Take the parts that vary and encapsulate them, so that later you can alter or extend the parts that vary without affecting those that don’t

As simple as this concept is, it forms the basis for almost every design pattern. All patterns provide a way to let some part of a system vary independently of all other parts.

> Program to an interface, not an implementation.

Design your code to depend on abstractions (interfaces) rather than concrete implementations (classes). This promotes flexibility, allowing you to swap different implementations without changing the code that depends on them.

> Favor composition over inheritance.

Creating systems using composition gives you a lot more flexibility.

Not only does it let you encapsulate a family of algorithms into their own set of classes,
but it also lets you **change behavior at runtime** as long as
the object you’re composing with implements the correct behavior interface.

## Noted Points:
1. Take what varies and “encapsulate” it so it won’t affect the rest of your code.
   
2. The result? Fewer unintended consequences from code changes and more flexibility in your systems!
