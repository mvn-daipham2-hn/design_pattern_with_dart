# Decorator Pattern(follow the Open-Closed principle)
## Problem-solving:
The Decorator Pattern attaches additional responsibilities to an object dynamically. Decorators provide a flexible alternative to subclassing for extending functionality.
## UML diagram: 
![Screenshot 2024-08-05 at 17 01 14](https://github.com/user-attachments/assets/317b451e-ed23-4b4b-a1ac-b9ccb03cab7f)
## Design Principle
> Open-Closed principle(Classes should be open for extension, but closed for modification)

- Come on in; we’re open. Feel free to extend our classes with any new behavior you like. If your needs or requirements change (and we know they will), just go ahead and make your own extensions.

- Sorry, we’re closed. That’s right, we spent a lot of time getting this code correct and bug-free, so we can’t let you alter the existing code.
It must remain closed to modification. If you don’t like it, you can speak to the manager.

Following the Open-Closed Principle usually introduces new levels of abstraction, which adds complexity to our code.
You want to concentrate on those areas that are most likely to change in your designs and apply the principles there.

Be careful when choosing the areas of code that need to be extended; applying the
Open-Closed Principle EVERYWHERE is wasteful, and unnecessary, and can lead to complex, hard-to-understand code.



