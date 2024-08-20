# Singleton Pattern
The Singleton Pattern ensures a class **has only one instance**, and provides a **global point of access** to it.

## Problem-solving:
Create one-of-a-kind objects for which there is only one instance.

## UML diagram:
![Screenshot 2024-08-20 at 14 23 56](https://github.com/user-attachments/assets/bbe0dd25-751b-496f-bcbf-7cdbab9439ab)

## Noted Points:
1. Singleton is not only responsible for managing its one instance (and providing global access), it is also responsible for whatever its main role is in your application.
It violates the **One Class, One Responsibility** principle, but there is utility in a class managing its own instance; it certainly makes the overall design simpler.

2. Like most patterns, the Singleton is not necessarily meant to be a solution that can fit into a library.
In addition, the Singleton code is trivial to add to any existing class.

3. If you are using a large number of Singletons in your application, you should take a hard look at your design. Singletons are meant to be used sparingly.
