# Bridge Pattern(Handle/Body)
## Problem-solving: 
Independently extend both the abstraction and the implementation hierarchies without affecting each other.

## UML diagram:
![Screenshot 2024-10-02 at 16 00 45](https://github.com/user-attachments/assets/5caf7be7-7114-41bc-bfc8-908c0e3fdec4)

• **_Abstraction_**
- defines the abstraction's interface.
- maintains a reference to an object of type Implementor.
  
• **_RefinedAbstraction_**
- Extends the interface defined by Abstraction.
  
• **_Implementor_**
- defines the interface for implementation classes. This interface doesn't have to correspond exactly to Abstraction's interface; in fact the two inter- faces can be quite different. Typically the Implementor interface provides only primitive operations, and Abstraction defines higher-level operations based on these primitives.
  
• **_Concretelmplementor_**
- implements the Implementor interface and defines its concrete implementation.
  
## Benefits:
- Decouples an implementation so that it is not bound permanently to an interface.

- Abstraction and implementation can be extended independently.

- Changes to the concrete abstraction classes don’t affect the client.

## Uses and Drawbacks:
- Useful in graphic and windowing systems that need to run over multiple platforms.

- Useful any time you need to vary an interface and an implementation in different ways.

- Increases complexity.
