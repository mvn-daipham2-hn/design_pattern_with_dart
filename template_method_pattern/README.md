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
1. Hooked on Template Method:
A hook is a method that is declared in the abstract class, but only given an empty
or default implementation. This gives subclasses the ability to “hook into” the algorithm at various points, if they wish; a subclass is also free to ignore the hook.

# Template Method vs Strategy 
- **Template Method Pattern**: Defines the skeleton of an algorithm in a method, deferring some steps to subclasses. The Template Method allows subclasses to redefine certain steps of an algorithm without changing its structure.
- **Strategy Pattern**: Encapsulates interchangeable algorithms or behaviors within a class and allows switching between them dynamically at runtime. The Strategy pattern separates the algorithm from the client that uses it.
