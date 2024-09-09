# State Pattern
> Encapsulate state-based behavior and delegate behavior to the current state
## Problem-solving:
The State Pattern allows an object to alter its behavior when its internal state changes. The object will appear to change its class.

- **The first part of the definition**: The pattern encapsulates the state into separate classes and delegates to the object representing the current state, we know that behavior changes along with the internal state. The Gumball Machine provides a good example: when the gumball machine is in the NoQuarterState and you insert a quarter, you get different behavior (**the machine accepts the quarter**) than if you insert a quarter when it’s in the HasQuarterState (**the machine rejects the quarter**). It is the same behavior from the client(**insert quarter**), but the machine has different interactions depending on its internal state(**accept or reject quarter**).
- **The second part of the definition**: Think about it from the perspective of a client: if an object you’re using can completely change its behavior, then it appears to you that the object is actually instantiated from another class. In reality, however, you know that we are using composition to give the appearance of a class change by simply referencing different state objects.

## UML diagram:
![Screenshot 2024-09-05 at 17 12 35](https://github.com/user-attachments/assets/86b9585c-a950-4abf-a71b-cf9a52742308)

## Noted Points:
1. Put all the behavior of a state into one class. That way, we’re localizing the behavior and making things a lot easier to change and understand.
2. If I have lots of instances of the Context in my application, is it possible to share the state objects across them? To share your states, you’ll typically assign each state to a static instance variable(**Singleton**). If your state needs to make use of methods or instance variables in your Context, you’ll also have to give it a reference to the Context in each handler() method.

## State Transitions in State Classes & Context Class
- **State Transitions in State Classes**: Preferred when you want cleaner state-specific logic and a simpler context class. However, it introduces more complexity within the state classes and potential tight coupling with the context.
  > It makes sense for larger or more complex applications.
- **State Transitions in Context Class**: It is better when you want centralized control over transitions, but it can make the context class more complex and harder to extend.
  > It makes sense for small and simple applications.

| **Aspect** | **State Transitions in State Classes** | **State Transitions in Context Class** |
| ---| ---| ---|
| **Encapsulation**               | Better encapsulation of behavior and transitions within states | Behavior and transitions are split between context and states |
| **Context Complexity**          | Simpler context class, as it delegates transitions to state objects | More complex context class, as it handles all transitions |
| **State Complexity**            | State classes can become more complex as they handle transitions | State classes remain simple, focusing only on behavior |
| **Extensibility**               | Easier to extend with new states and transitions without changing the context | Adding new states may require changes to the context class |
| **Decoupling**                  | Tighter coupling between states and context (circular dependencies) | Looser coupling; states are more independent |

## State Pattern vs Strategy Pattern
> The State and Strategy Patterns have the same class diagram, but they differ in intent.
- Use **Strategy** when you need to choose between different algorithms or ways of doing something, and the client should be able to switch between them.
- Use **State** when an object's behavior depends on its state, and you want the transitions between behaviors to happen internally, without the client needing to know the details.

| Criteria | Strategy Pattern | State Pattern |
|:---:|---|---|
| Purpose | Focuses on changing the algorithm or behavior at runtime. It’s typically used when you have multiple ways to perform a task, and you want to choose the best one based on the situation. | Focuses on changing the object’s behavior when its internal state changes. It gives the illusion that the object has changed its class by altering its behavior based on its current state. |
| Context | The context (or the main class) explicitly sets and uses different strategies (algorithms or methods of doing something). | The context’s behavior changes automatically as its state changes. The object itself manages its state and behaves differently depending on the current state. |
| Client Awareness | The client is aware of the different strategies and can choose which one to use. | The client is unaware of the object’s current state; the behavior changes without the client’s direct intervention. |
| Switching Mechanism | Switching between strategies is generally explicit—done by the client or based on some condition. | Switching states happens internally as the state changes. The context class knows how to transition between states. |


