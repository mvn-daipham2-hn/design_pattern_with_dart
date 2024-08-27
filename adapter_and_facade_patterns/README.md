# Adapter Pattern
> We’re going to attempt such impossible feats as putting a square peg in a round hole.
<details>
  <summary>View more details</summary>
  
## Problem-solving:
The Adapter Pattern converts the interface of a class into another interface the clients expect. Adapter lets classes work together that couldn’t otherwise because of incompatible interfaces.

## UML diagram: 
![Screenshot 2024-08-26 at 16 28 10](https://github.com/user-attachments/assets/bfcea675-be17-49e2-885f-d636ea8f0a88)

## Noted Points:
1. There are actually two kinds of adapters: object adapters and class adapters.
- **Object Adapter**: Uses composition, easier to manage but might add overhead.
- **Class Adapter**: Uses multiple inheritance, more efficient but tightly coupled with the adaptee. Might encounter when using multiple inheritance language.
</details>

# Facade Pattern
> To use the Facade Pattern, we create a class that simplifies and unifies a set of more complex classes that belong to some subsystem.
<details>
  <summary>View more details</summary>

## Problem-solving:
The Facade Pattern provides a unified interface to a set of interfaces in a subsystem. Facade defines a higher-level interface that makes the subsystem easier to use.

## UML diagram: 
![Screenshot 2024-08-27 at 14 27 00](https://github.com/user-attachments/assets/c6800776-f1ef-48b7-af9c-4d917dd508fd)

## Design Principles:
> Principle of Least Knowledge - talk only to your immediate friends. It is also called the Law of Demeter.

This principle prevents us from creating designs that have a large number of classes coupled together so that changes in one part of the system cascade to other parts. 

When you build a lot of dependencies between many classes, you are building a fragile system that will be costly to maintain and complex for others to understand.

**How to do this principle?**
_The principle provides some guidelines: take any object; now from any method in that object, the principle tells us that we should only invoke methods that belong to:_

1. The object itself
2. Objects passed in as a parameter to the method
3. Any object the method creates or instantiates
4. Any components of the object(composition or HAS-A relationship)
![Screenshot 2024-08-27 at 14 54 40](https://github.com/user-attachments/assets/6c50c9fa-4976-4d2e-a850-be3035d9260f)

</details>

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
