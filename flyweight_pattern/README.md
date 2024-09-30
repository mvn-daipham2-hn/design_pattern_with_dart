# Flyweight Pattern
## Problem-solving:
Use the Flyweight Pattern when one instance of a class can be used to provide many “virtual instances.”

## UML diagram:

## Benefits:
- Reduces the number of object instances at runtime, saving memory.

- Centralizes state for many “virtual” objects into a single location.

## Uses and Drawback:
- The Flyweight is used when a class has many instances, and they can all be controlled identically.

- Once you’ve implemented it, single, logical instances of the class will not be able to behave independently from the other instances.