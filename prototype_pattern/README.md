# Prototype Pattern
## Problem-solving:
Using the Prototype Pattern when creating an instance of a given class is either expensive or complicated.

## UML diagram:
![Screenshot 2024-10-02 at 17 14 51](https://github.com/user-attachments/assets/84bf9c65-a051-4d72-a6a4-1a4ddafcbab1)

• **_Prototype_**
- declares an interface for cloning itself.
  
• **_ConcretePrototype_**
- implements an operation for cloning itself.

• **_Client_**
- creates a new object by asking a prototype to clone itself.

## Benefits:
- Hides the complexities of making new instances from the client.

- Provides the option for the client to generate objects whose type is not known.

- In some circumstances, copying an object can be more efficient than creating a new object.

## Uses and Drawback:
- Prototype should be considered when a system must create new objects of many types in a complex class hierarchy.

- A drawback to using the Prototype is that making a copy of an object can sometimes be complicated.
