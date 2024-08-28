# Template Method Pattern
> The Template Method defines the steps of an algorithm and allows subclasses to provide the implementation for one or more steps.

## Problem-solving:
The Template Method Pattern defines the skeleton of an algorithm in a method, deferring some steps to subclasses.
The Template Method lets subclasses redefine certain steps of an algorithm without changing the algorithm’s structure.

## UML diagram:
![Screenshot 2024-08-27 at 16 58 32](https://github.com/user-attachments/assets/2d5f4208-a40d-4b81-9cef-56473ed133d9)

## Design Principles:
> The Hollywood Principle: Don’t call us, we’ll call you

With the Hollywood Principle, we allow low-level components to hook themselves into a system, but the high-level components determine when they are needed, and how. In other words, the high-level components give the low-level components a “don’t call us, we’ll call you” treatment.

The connection between the Hollywood Principle and the Template Method Pattern is probably somewhat apparent: when we design with the Template Method Pattern, we’re telling subclasses, “Don’t call us, we’ll call you.” 
![Screenshot 2024-08-28 at 14 40 59](https://github.com/user-attachments/assets/0a2922dc-7379-4ff6-828e-5a87b30e451e)

## Noted Points:
1. Hooked on Template Method...

2. (editing...)
