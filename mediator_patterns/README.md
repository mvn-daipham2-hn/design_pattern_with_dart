# Mediator Pattern
## Problem-solving:
Use the Mediator Pattern to centralize complex communications and control between related objects.

## UML diagram:
![Screenshot 2024-10-01 at 15 37 28](https://github.com/user-attachments/assets/2e0cfa73-1d28-45c2-9137-798ebaa3776b)

• **_Mediator_**
- defines an interface for communicating with Colleague objects.
  
• **_ConcreteMediator_**
- implements cooperative behavior by coordinating Colleague objects.
- knows and maintains its colleagues.
  
• **_Colleague classes_**
- each Colleague class knows its Mediator object.
- each colleague communicates with its mediator whenever it would have otherwise communicated with another colleague.

## Implementation:
1. **Omitting the abstract Mediator class**.
There's no need to define an abstract Mediator class when colleagues work with only one mediator.
The abstract coupling that the Mediator class provides lets colleagues work with different Mediator subclasses, and vice versa.

2. **Colleague-Mediator communication**.
Colleagues have to communicate with their mediator when an event of interest occurs.
   - **One approach** is to implement the Mediator as an Observer **using the Observer pattern**.
   Colleague classes act as Subjects, sending notifications to the mediator whenever they change state.
   The mediator responds by propagating the effects of the change to other colleagues.
   - **Another approach** defines a specialized notification interface in Mediator that lets colleagues be more direct in their communication.
   When communicating with the mediator, a **colleague passes itself as an argument**, allowing the mediator to identify the sender.

## Benefits:
- Increases the reusability of the objects supported by the Mediator by decoupling them from the system.

- Simplifies maintenance of the system by centralizing control logic.

- Simplifies and reduces the variety of messages sent between objects in the system.

## Uses and Drawback:
- The Mediator is commonly used to coordinate related GUI components.

- Without proper design, the Mediator object itself can become overly complex.
