# Adapter Pattern
> We’re going to attempt such impossible feats as putting a square peg in a round hole
## Problem-solving:
The Adapter Pattern converts the interface of a class into another interface the clients expect. Adapter lets classes work together that couldn’t otherwise because of incompatible interfaces.

## UML diagram: 
![Screenshot 2024-08-26 at 16 28 10](https://github.com/user-attachments/assets/bfcea675-be17-49e2-885f-d636ea8f0a88)

## Noted Points:
1. There are actually two kinds of adapters: object adapters and class adapters.
- **Object Adapter**: Uses composition, easier to manage but might add overhead.
- **Class Adapter**: Uses multiple inheritance, more efficient but tightly coupled with the adaptee. Might encounter when using multiple inheritance language.

# Facade Pattern
## Problem-solving:

## UML diagram: 

## Noted Points:

# Adapter vs Facade
- **Adapter**:
  - Makes incompatible interfaces compatible.
  - Translates one interface into another.

- **Facade**:
  - Simplifies and hides complexity.
  - Provides a unified, easier-to-use interface for a set of interfaces.

- **Key Difference**:
  - Adapter focuses on compatibility between two interfaces.
  - Facade focuses on simplifying interactions with a complex system.

# Adapter vs Decorator
- **Adapter**:
  - Changes an interface to make it compatible with another.
  - Focuses on making things work together.

- **Decorator**:
  - Adds extra features to an object without changing its interface.
  - Focuses on enhancing behavior.

- **Key Difference**:
  - Adapter changes how an object is used.
  - Decorator changes what an object does.
