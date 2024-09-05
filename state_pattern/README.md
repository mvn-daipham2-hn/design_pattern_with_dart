# State Pattern
## Problem-solving:
The State Pattern allows an object to alter its behavior when its internal state changes. The object will appear to change its class.

- **The first part of the definition**: The pattern encapsulates the state into separate classes and delegates to the object representing the current state, we know that behavior changes along with the internal state. The Gumball Machine provides a good example: when the gumball machine is in the NoQuarterState and you insert a quarter, you get different behavior (**the machine accepts the quarter**) than if you insert a quarter when it’s in the HasQuarterState (**the machine rejects the quarter**). Same behavior from the client(**insert quarter**), but the machine has different interactions depending on its internal state(**accept or reject quarter**).
- **The second part of the definition**: Think about it from the perspective of a client: if an object you’re using can completely change its behavior, then it appears to you that the object is actually instantiated from another class. In reality, however, you know that we are using composition to give the appearance of a class change by simply referencing different state objects.

## UML diagram:
![Screenshot 2024-09-05 at 17 12 35](https://github.com/user-attachments/assets/86b9585c-a950-4abf-a71b-cf9a52742308)

## Noted Points:
1. Put all the behavior of a state into one class. That way, we’re localizing the behavior and making things a lot easier to change and understand.

## State Pattern vs Strategy Pattern
- Use **Strategy** when you need to choose between different algorithms or ways of doing something, and the client should be able to switch between them.
- Use **State** when an object's behavior depends on its state, and you want the transitions between behaviors to happen internally, without the client needing to know the details.

| Criteria | Strategy Pattern | State Pattern |
|:---:|---|---|
| Purpose | Focuses on changing the algorithm or behavior at runtime. It’s typically used when you have multiple ways to perform a task, and you want to choose the best one based on the situation. | Focuses on changing the object’s behavior when its internal state changes. It gives the illusion that the object has changed its class by altering its behavior based on its current state. |
| Context | The context (or the main class) explicitly sets and uses different strategies (algorithms or methods of doing something). | The context’s behavior changes automatically as its state changes. The object itself manages its state and behaves differently depending on the current state. |
| Client Awareness | The client is aware of the different strategies and can choose which one to use. | The client is unaware of the object’s current state; the behavior changes without the client’s direct intervention. |
| Switching Mechanism | Switching between strategies is generally explicit—done by the client or based on some condition. | Switching states happens internally as the state changes. The context class knows how to transition between states. |


