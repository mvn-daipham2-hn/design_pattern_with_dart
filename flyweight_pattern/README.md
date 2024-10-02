# Flyweight Pattern
## Problem-solving:
Use the Flyweight Pattern when one instance of a class can be used to provide many “virtual instances.”

## UML diagram:
![Screenshot 2024-10-02 at 16 17 28](https://github.com/user-attachments/assets/55e9abbd-ac5f-4656-b549-51c519cec125)

• **_Flyweight_**
- declares an interface through which flyweights can receive and act in an extrinsic state.

• **_ConcreteFlyweight_**
- implements the Flyweight interface and adds storage for intrinsic state, if any. A ConcreteFlyweight object must be sharable. Any state it stores must be intrinsic; that is, it must be independent of the ConcreteFlyweight object's context.
  
• **_UnsharedConcreteFlyweight_**
- not all Flyweight subclasses need to be shared. The Flyweight interface enables sharing; it doesn't enforce it. It's common for UnsharedConcrete- Flyweight objects to have ConcreteFlyweight objects as children at some level in the flyweight object structure.
  
• **_FlyweightFactory_**
- creates and manages flyweight objects.
- ensures that flyweights are shared properly. When a client requests a flyweight, the FlyweightFactory object supplies an existing instance or creates one, if none exists.
  
• **_Client_**
- maintains a reference to flyweight(s).
- computes or stores the extrinsic state of flyweight(s).

## Benefits:
- Reduces the number of object instances at runtime, saving memory.

- Centralizes state for many “virtual” objects into a single location.

## Uses and Drawback:
- The Flyweight is used when a class has many instances, and they can all be controlled identically.

- Once you’ve implemented it, single, logical instances of the class will not be able to behave independently from the other instances.
