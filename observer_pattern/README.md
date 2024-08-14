# Observer Pattern
## Problem-solving:
The Observer Pattern defines a one-to-many dependency between objects so that when one object changes state, all of its dependents are notified and updated automatically.
## UML diagram: 
![Screenshot 2024-08-05 at 14 51 49](https://github.com/user-attachments/assets/9dc75f04-4e09-410e-aed5-37eb8c570e93)

## Design Principles(Subject or Observable, they are the same concept)
> Identify the aspects of your application that vary and separate them from what stays the same.

The thing that varies in the Observer Pattern is the state of the Subject and the number and
types of Observers. With this pattern, you can vary the objects that are dependent on the state of the Subject, without having to change that Subject. That’s called planning ahead!

> Program to an interface, not an implementation.

Both the Subject and Observer use interfaces. The Subject keeps track of objects implementing the Observer interface, while the observers register with, and get notified by the Subject interface. As we’ve seen, this keeps things nice and loosely coupled.

> Favor composition over inheritance.

The Observer Pattern uses composition to compose any number of Observers with their Subjects. These relationships aren’t set up by some kind of
inheritance hierarchy. No, they are set up at runtime by composition!
