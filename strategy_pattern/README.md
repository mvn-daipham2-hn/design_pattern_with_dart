# Strategy Pattern

## Problem-solving:
The Strategy Pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable. Strategy lets the algorithm vary independently from clients that use it.

## UML diagram: 
![Screenshot 2024-08-02 at 13 48 29](https://github.com/user-attachments/assets/2898b990-cbf5-445e-9bb6-67ab21aba5d5)

## Design Principle:
> Identify the aspects of your application that vary and separate them from what stays the same.

Take the parts that vary and encapsulate them, so that later you can alter or extend the parts that vary without affecting those that don’t

As simple as this concept is, it forms the basis for almost every design pattern. All patterns provide a way to let some part of a system vary independently of all other parts.

> Program to an interface, not an implementation.

> Favor composition over inheritance.

Creating systems using composition gives you a lot more flexibility. It lets you encapsulate a family of algorithms into their own set of classes, but it also enables you to change behavior at runtime.

## Noted Points:
1. Take what varies and “encapsulate” it so it won’t affect the rest of your code.
2. The result? Fewer unintended consequences from code changes and more flexibility in your systems!
